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
void main() {
  // Creating instances of different fitness tracker implementations
  FitnessTracker basicTracker = BasicFitnessTracker();
  FitnessTracker advancedTracker = AdvancedFitnessTracker();
  FitnessTracker smartTracker = SmartFitnessTracker();
  FitnessTracker wearableTracker = WearableFitnessTracker();

  // Tracking steps and heart rate using different fitness trackers
  basicTracker.trackSteps(5000); // Outputs: Tracking steps: 5000
  basicTracker.trackHeartRate(75); // Outputs: Tracking heart rate: 75 bpm

  advancedTracker.trackSteps(10000); // Outputs: Advanced tracking of steps: 10000
  advancedTracker.trackHeartRate(80); // Outputs: Advanced tracking of heart rate: 80 bpm

  smartTracker.trackSteps(15000); // Outputs: Smart tracking of steps: 15000 with GPS
  smartTracker.trackHeartRate(85); // Outputs: Smart tracking of heart rate: 85 bpm with ECG

  wearableTracker.trackSteps(20000); // Outputs: Wearable tracking of steps: 20000 with motion sensors
  wearableTracker.trackHeartRate(90); // Outputs: Wearable tracking of heart rate: 90 bpm with optical sensors
}