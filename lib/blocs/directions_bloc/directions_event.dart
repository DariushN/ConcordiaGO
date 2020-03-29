import 'package:concordia_go/services/outdoor_path_service.dart';
import 'package:concordia_go/utilities/concordia_constants.dart' as concordia_constants;
import 'package:concordia_go/utilities/direction.dart';
import 'package:concordia_go/widgets/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:concordia_go/blocs/bloc.dart';

abstract class DirectionsEvent {
  InstructionState _state;

  set state(InstructionState value) {
    _state = value;
  }

  DirectionsEvent();

  Future<DirectionsState> createState(OutdoorPathService outdoorPathService);
}

class GetDirectionsEvent extends DirectionsEvent {
  final LatLng _startCoordinates;
  final LatLng _endCoordinates;
  final String _destination;
  final ModeOfTransport _modeOfTransport;

  GetDirectionsEvent(this._startCoordinates, this._endCoordinates, this._destination, this._modeOfTransport);

  @override
  Future<DirectionsState> createState(OutdoorPathService outdoorPathService) async {
    await outdoorPathService.getDirections(
      _startCoordinates.latitude,
      _startCoordinates.longitude,
      _endCoordinates.latitude,
      _endCoordinates.longitude,
      _destination,
      _modeOfTransport,
    );

    Direction newInstruction = await outdoorPathService.getFirstInstruction();
    BlocProvider.of<MapBloc>(mc)
        .add(MoveCameraEvent(newInstruction.coordinate, concordia_constants.navZoomLevel, false));
    BlocProvider.of<MapBloc>(mc).add(DirectionLinesEvent(outdoorPathService.getPolylines()));
    revealPanel();
    return InstructionState(newInstruction, outdoorPathService.getRoute());
  }
}

class NextInstructionEvent extends DirectionsEvent {
  NextInstructionEvent();

  @override
  Future<DirectionsState> createState(OutdoorPathService outdoorPathService) async {
    Direction newInstruction = await outdoorPathService.getNextInstruction();
    if (!outdoorPathService.isLastInstruction()) {
      BlocProvider.of<MapBloc>(mc)
          .add(MoveCameraEvent(newInstruction.coordinate, concordia_constants.navZoomLevel, false));
    }
    return InstructionState(newInstruction, _state.directionsList);
  }
}

class PreviousInstructionEvent extends DirectionsEvent {
  PreviousInstructionEvent();

  @override
  Future<DirectionsState> createState(OutdoorPathService outdoorPathService) async {
    Direction newInstruction = await outdoorPathService.getPreviousInstruction();
    BlocProvider.of<MapBloc>(mc)
        .add(MoveCameraEvent(newInstruction.coordinate, concordia_constants.navZoomLevel, false));
    return InstructionState(newInstruction, _state.directionsList);
  }
}
