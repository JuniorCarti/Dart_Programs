// Fitness Tracker (Health Tech)
abstract class FitnessTracker {
  void trackSteps(int steps);
  void trackHeartRate(int heartRate);
}
class BasicFitnessTracker implements FitnessTracker {
  @override
  void trackSteps(int steps) {
    print("Tracking steps: $steps");
    return;
  }
  

  @override
  void trackHeartRate(int heartRate) {
    print("Tracking heart rate: $heartRate bpm");
    return;
  }
}