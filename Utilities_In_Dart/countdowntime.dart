import 'dart:async';

void startCountdown(DateTime targetDate) {
  Timer.periodic(Duration(seconds: 1), (timer) {
    Duration remaining = targetDate.difference(DateTime.now());
    if (remaining.isNegative) {
      print('Welcome to New Year 2025!');
      timer.cancel();
    } else {
      print('Time remaining: ${remaining.inHours}h '
            '${remaining.inMinutes.remainder(60)}m '
            '${remaining.inSeconds.remainder(60)}s');
    }
  });
}

void main() {
  // Start countdown for 40 seconds from now
  startCountdown(DateTime.now().add(Duration(seconds: 40)));
}
