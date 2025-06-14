import 'dart:async';

void startCountdown(DateTime targetDate) {
  Timer.periodic(Duration(seconds: 1), (timer) {
    Duration remaining = targetDate.difference(DateTime.now());
    if (remaining.isNegative) {
      print('Countdown finished!');
      timer.cancel();
    } else {
      print('Time remaining: ${remaining.inHours}h '
            '${remaining.inMinutes.remainder(60)}m '
            '${remaining.inSeconds.remainder(60)}s');
    }
  });
}

// Usage:
// startCountdown(DateTime.now().add(Duration(minutes: 5)));
