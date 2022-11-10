import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workout_tracker/widgets/calendar.dart';
import 'package:workout_tracker/widgets/rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Amara",
                style: Theme.of(context).textTheme.displayMedium!),
            SizedBox(height: 13),
            CalendarWidget(),
            SizedBox(height: 25),
            Row(
              children: [
                Image.asset('assets/runner.webp', width: 210),
                Column(
                  children: [
                    Text('Today you run',
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                )),
                    Text('for',
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                )),
                    Text('5.31 KM',
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 19, 130, 221),
                                )),
                    SizedBox(height: 15),
                    RoundedButton(
                      title: 'Details',
                      butColor: Colors.redAccent,
                      textColor: Colors.white,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: 450,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 19, 130, 221),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatsWidget(
                          statIcon: Icons.directions_walk_rounded,
                          value: '1234',
                          subValue: 'steps',
                        ),
                        StatsWidget(
                          statIcon: Icons.heart_broken_rounded,
                          value: '90',
                          subValue: 'bpm',
                        ),
                        StatsWidget(
                          statIcon: Icons.food_bank,
                          value: '460',
                          subValue: 'calories',
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class StatsWidget extends StatelessWidget {
  final IconData statIcon;
  final String value;
  final String subValue;
  const StatsWidget({
    Key? key,
    required this.statIcon,
    required this.value,
    required this.subValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          statIcon,
          size: 43,
          color: Colors.white,
        ),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Text(
              subValue,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
