import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workout_tracker/constants/navigation.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Hello Amara",
                style: Theme.of(context).textTheme.displayMedium!),
            // SizedBox(height: 10),
            CalendarWidget(),
            // SizedBox(height: 25),
            Row(
              children: [
                Image.asset('assets/runner.webp', width: 230),
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
                      onTapFunc: () {},
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
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
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Live tracking',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )),
                          Image.asset(
                            'assets/watch.png',
                            height: 180,
                            width: 200,
                          ),
                        ])
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavBar(
                    navIcon: Icons.home_rounded,
                    tapFunc: () {},
                  ),
                  NavBar(
                    navIcon: Icons.person,
                    tapFunc: () {},
                  ),
                  NavBar(
                    navIcon: Icons.watch_later_rounded,
                    tapFunc: () {
                      Navigator.of(context).pushNamed(overviewRoute);
                    },
                  ),
                  NavBar(
                    navIcon: Icons.notifications,
                    tapFunc: () {},
                  ),
                  NavBar(
                    navIcon: Icons.settings,
                    tapFunc: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class NavBar extends StatelessWidget {
  final IconData navIcon;
  final VoidCallback tapFunc;
  const NavBar({
    Key? key,
    required this.navIcon,
    required this.tapFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapFunc,
      child: Container(
        child: Icon(
          navIcon,
          color: Color.fromARGB(255, 19, 130, 221),
          size: 33,
        ),
      ),
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
    return Container(
      width: 140,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            statIcon,
            size: 43,
            color: Colors.white,
          ),
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
      ),
    );
  }
}
