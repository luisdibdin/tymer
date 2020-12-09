import 'package:workout_timer/models/workout_model.dart';

class ExerciseModel extends WorkoutModel {
  String exerciseName = '';
  num length;
  bool timed = true;

  ExerciseModel({this.exerciseName, this.length, this.timed});
}
