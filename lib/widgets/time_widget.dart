import 'package:ecosport_launcher/config/config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeWidget extends StatelessWidget {
  final Size size;
  const TimeWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(4),
        width: size.width,
        height: size.height,
        child: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1)),
          builder: (context, snap) {
            final hour = DateFormat('hh').format(DateTime.now());
            final min = DateFormat('mm').format(DateTime.now());
            final sec = DateFormat('ss').format(DateTime.now());
            final amPM = DateFormat('a').format(DateTime.now());
            final date = DateFormat.yMMMd().format(DateTime.now().toLocal());
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(date, style: AppTheme.ddMMM(true)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(hour, style: AppTheme.HHMM(true)),
                    Text(':', style: AppTheme.HHMM(true)),
                    Text(min, style: AppTheme.HHMM(true)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(sec, style: AppTheme.ss(true)),
                        const SizedBox(height: 4),
                        Text(amPM, style: AppTheme.amPM(true)),
                      ],
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
