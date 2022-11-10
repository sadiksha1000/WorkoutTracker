import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MiniCalendar(background: Colors.white, day: 'Mon', date: '8'),
        MiniCalendar(background: Colors.white, day: 'Tue', date: '9'),
        MiniCalendar(background: Colors.white, day: 'Wed', date: '10'),
        MiniCalendar(
            background: Color.fromARGB(255, 19, 130, 221),
            day: 'Thu',
            date: '11'),
        MiniCalendar(background: Colors.white, day: 'Fri', date: '12'),
        MiniCalendar(background: Colors.white, day: 'Sat', date: '13'),
        MiniCalendar(background: Colors.white, day: 'Sun', date: '14'),
      ],
    );
  }
}

class MiniCalendar extends StatelessWidget {
  final Color background;
  final String day;
  final String date;

  const MiniCalendar({
    Key? key,
    required this.background,
    required this.day,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 65,
          width: 48,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(day, style: Theme.of(context).textTheme.displayMedium),
            Text(
              date,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
