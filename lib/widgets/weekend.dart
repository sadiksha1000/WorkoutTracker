import 'package:flutter/material.dart';

class Weekend extends StatelessWidget {
  const Weekend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(
          width: double.infinity,
          height: 145,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 19, 130, 221),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                WeeklyStats(
                  height: 62,
                  label: 'Mon',
                  statColor: Colors.white,
                ),
                WeeklyStats(
                  height: 70,
                  label: 'Tue',
                  statColor: Colors.white,
                ),
                WeeklyStats(
                  height: 72,
                  label: 'Wed',
                  statColor: Colors.white,
                ),
                WeeklyStats(
                  height: 82,
                  label: 'Thu',
                  statColor: Colors.redAccent,
                ),
                WeeklyStats(
                  height: 45,
                  label: 'Fri',
                  statColor: Colors.white,
                ),
                WeeklyStats(
                  height: 50,
                  label: 'Sat',
                  statColor: Colors.white,
                ),
                WeeklyStats(
                  height: 35,
                  label: 'Sun',
                  statColor: Colors.white,
                ),
              ],
            ),
          )),
    );
  }
}

class WeeklyStats extends StatelessWidget {
  final double height;
  final Color statColor;
  final String label;
  const WeeklyStats({
    Key? key,
    required this.height,
    required this.statColor,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height,
          width: 30,
          decoration: BoxDecoration(
            color: statColor,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
