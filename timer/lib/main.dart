import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

void main() {
  runApp(timer());
}

class timer extends StatelessWidget {
  timer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Countdown Timer')),
        body: Center(
          child: TimerBuilder.scheduled([DateTime(2024, 3, 11)],
              builder: (context) {
            DateTime now = DateTime.now();
            DateTime eventDate = DateTime(2024, 3, 11);
            Duration duration = eventDate.difference(now);

            String days = duration.inDays.toString().padLeft(2, '0');
            String hours = (duration.inHours % 24).toString().padLeft(2, '0');
            String minutes =
                (duration.inMinutes % 60).toString().padLeft(2, '0');
            String seconds =
                (duration.inSeconds % 60).toString().padLeft(2, '0');

            return Text(
              '$days days $hours:$minutes:$seconds',
              style: TextStyle(fontSize: 24),
            );
          }),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Countdown Timer')),
//         body: Center(
//           child: CountdownTimer(
//             endTime: DateTime(2024, 1, 3).millisecondsSinceEpoch,
//             textStyle: TextStyle(fontSize: 24),
//           ),
//         ),
//       ),
//     );
//   }
// }
