import 'package:flutter/material.dart';
import 'package:workout_tracker/constants/navigation.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 130, 221),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text('Current Progress',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(homeRoute);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white.withOpacity(0.3),
                    size: 45,
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 210,
                      height: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.white.withOpacity(0.2)),
                    ),
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.redAccent,
                      ),
                    ),
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('100%',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.redAccent,
                                  fontSize: 37,
                                )),
                        Text('complete',
                            style: Theme.of(context).textTheme.displaySmall)
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white.withOpacity(0.3),
                  size: 45,
                ),
              ],
            ),
            Container(
              height: 470,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Chip(
                    backgroundColor: Colors.redAccent,
                    labelPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 2,
                    ),
                    label: Text(
                      'Workout Type',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SquareInfo(
                        containerColor: Colors.grey.withOpacity(0.3),
                        icon: Icons.heart_broken_rounded,
                        iconColor: Colors.grey,
                        textColor: Colors.grey,
                        title: 'Cardio',
                      ),
                      const SquareInfo(
                        containerColor: Colors.redAccent,
                        icon: Icons.fitness_center_outlined,
                        iconColor: Colors.white,
                        textColor: Colors.black,
                        title: 'Power',
                      ),
                      SquareInfo(
                        containerColor: Colors.grey.withOpacity(0.3),
                        icon: Icons.directions_walk_sharp,
                        iconColor: Colors.grey,
                        textColor: Colors.grey,
                        title: 'Endurance',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 19, 130, 221),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.redAccent,
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 38,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SquareInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color containerColor;
  final Color textColor;
  const SquareInfo({
    Key? key,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.containerColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 43,
              color: iconColor,
            )),
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
        )
      ],
    );
  }
}
