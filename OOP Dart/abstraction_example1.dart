// Abstract State Machine
abstract class TrafficLightState {
  void changeState();
  String getCurrentLight();
}

// Hidden Implementations
class RedLight implements TrafficLightState { // Represents the RED light state
  @override
  void changeState() => print("Switching to GREEN after 60s timer"); // Internal timer logic hidden
  
  @override
  String getCurrentLight() => "RED"; // Returns the current light state
}

class GreenLight implements TrafficLightState {
  @override
  void changeState() => print("Switching to YELLOW after 45s");
  
  @override
  String getCurrentLight() => "GREEN";
}

// Public Interface
class TrafficLight {
  TrafficLightState _state = RedLight();
  
  void change() => _state.changeState();
  String get light => _state.getCurrentLight();
}

// Usage
void main() {
  final light = TrafficLight();
  print(light.light); // "RED"
  light.change();     // Internal timer logic hidden
}