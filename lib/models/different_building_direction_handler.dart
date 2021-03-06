import 'package:concordia_go/models/direction_handler.dart';
import 'package:concordia_go/models/direction_object.dart';
import 'package:concordia_go/models/direction_request.dart';
import 'package:concordia_go/models/node.dart';
import 'package:concordia_go/services/direction_chain.dart';
import 'package:concordia_go/services/indoor_path_service.dart';

class DifferentBuildingDirectionHandler implements DirectionHandler {
  DirectionHandler _nextHandler;

  @override
  void setNext(DirectionHandler handler) {
    _nextHandler = handler;
  }

  @override
  void handle(DirectionRequest request) {
    if (canHandle(request)) {
      final Node exitNode = Node('990000');
      final Dobject exitIndoorDobject = Dobject.indoor(exitNode, request.source.building, '1');
      final DirectionRequest indoorExitRequest = DirectionRequest(request.source, exitIndoorDobject);

      final Dobject sourceOutdoorDobject = Dobject.building(request.source.building);
      final DirectionRequest outdoorRequest = DirectionRequest(sourceOutdoorDobject, request.destination);

      // TODO(username): implement outdoor request to get to destination

      DirectionChain.instance.head.handle(indoorExitRequest);
      outdoorRequestHolder = outdoorRequest;
    } else {
      _nextHandler.handle(request);
    }
  }

  /// Returns `true` if the request involves directions from rooms in different buildings.
  @override
  bool canHandle(DirectionRequest request) {
    return _endsIndoor(request) || _endsOutdoor(request);
  }

  bool _endsIndoor(DirectionRequest request) {
    return (request.source.isIndoor() && request.destination.isIndoor()) &&
        (request.source.building.code != request.destination.building.code);
  }

  bool _endsOutdoor(DirectionRequest request) {
    return request.source.isIndoor() && request.destination.isOutdoor();
  }
}
