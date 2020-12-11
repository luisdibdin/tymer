import 'package:workout_timer/models/exercise_model.dart';

class WorkoutModel {
  String workoutId;
  int rounds;
  int exercisesPerRound;
  int exerciseRestPeriod;
  int roundRestPeriod;
  List<ExerciseModel> exercises;

  WorkoutModel(
      {this.workoutId,
      this.rounds,
      this.exercisesPerRound,
      this.exerciseRestPeriod,
      this.roundRestPeriod,
      this.exercises});

  int calculateTotalExerciseTimePerRound() {
    int total = 0;
    for (ExerciseModel exercise in exercises) {
      total += exercise.length;
    }
    return total;
  }

  int totalWorkoutTime() {
    int totalExerciseTime = calculateTotalExerciseTimePerRound();
    return (exercisesPerRound + (exercisesPerRound - 1) * exerciseRestPeriod) *
            rounds +
        roundRestPeriod * (rounds - 1);
  }
}
