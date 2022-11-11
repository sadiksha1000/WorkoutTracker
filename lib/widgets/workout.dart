import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  const Workout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
