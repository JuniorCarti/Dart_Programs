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
class AdvancedFitnessTracker implements FitnessTracker {
  @override
  void trackSteps(int steps) {
    print("Advanced tracking of steps: $steps");
    return;
  }

  @override
  void trackHeartRate(int heartRate) {
    print("Advanced tracking of heart rate: $heartRate bpm");
    return;
  }
}
class SmartFitnessTracker implements FitnessTracker {
  @override
  void trackSteps(int steps) {
    print("Smart tracking of steps: $steps with GPS");
    return;
  }

  @override
  void trackHeartRate(int heartRate) {
    print("Smart tracking of heart rate: $heartRate bpm with ECG");
    return;
  }
}
class WearableFitnessTracker implements FitnessTracker {
  @override
  void trackSteps(int steps) {
    print("Wearable tracking of steps: $steps with motion sensors");
    return;
  }

  @override
  void trackHeartRate(int heartRate) {
    print("Wearable tracking of heart rate: $heartRate bpm with optical sensors");
    return;
  }
}