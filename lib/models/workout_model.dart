class WorkoutModel {
  String workoutId;
  int rounds;
  int exercisesPerRound;
  int exerciseRestPeriod;
  int roundRestPeriod;

  WorkoutModel(
      {this.workoutId,
      this.rounds,
      this.exercisesPerRound,
      this.exerciseRestPeriod,
      this.roundRestPeriod});

  int totalWorkoutTime(int rounds, int exercisesPerRound, int exerciseRestPeriod, int roundRestPeriod) {
    return (exercisesPerRound + (exercisesPerRound - 1) * exerciseRestPeriod) * rounds + roundRestPeriod * (rounds - 1);
  }
}
