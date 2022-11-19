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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
          border: Border.all(color: Colors.grey),
        ),
        child: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1)),
          builder: (context, snap) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(DateFormat('hh').format(DateTime.now()),
                        style: Theme.of(context).textTheme.displayMedium),
                    Text(':', style: Theme.of(context).textTheme.displayMedium),
                    Text(DateFormat('mm').format(DateTime.now()),
                        style: Theme.of(context).textTheme.displayMedium),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(DateFormat('ss').format(DateTime.now()),
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87)),
                        const SizedBox(height: 4),
                        Text(DateFormat('a').format(DateTime.now()),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38)),
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
