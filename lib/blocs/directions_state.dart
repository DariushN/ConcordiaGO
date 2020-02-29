import 'package:concordia_go/utilities/direction.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DirectionsState {}

class InitialDirectionsState extends DirectionsState {}

class InstructionUpdate extends DirectionsState {
  final Direction step;
  final List<Direction> directionsList;

  InstructionUpdate(this.step, this.directionsList);
}