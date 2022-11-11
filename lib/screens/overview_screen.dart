import 'package:flutter/material.dart';
import 'package:workout_tracker/constants/navigation.dart';
import 'package:workout_tracker/widgets/weekend.dart';
import 'package:workout_tracker/widgets/workout.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print("Width$width");
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 130, 221),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(height * 0.026),
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
                        width: height * 0.30,
                        height: height * 0.30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.white.withOpacity(0.2)),
                      ),
                      Container(
                        width: height * 0.25,
                        height: height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: height * 0.2,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.redAccent,
                        ),
                      ),
                      Container(
                        width: height * 0.185,
                        height: height * 0.185,
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
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  height: height * 0.75,
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
                        labelPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: height * 0.002,
                        ),
                        label: Text(
                          'Workout Type',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      width < 450
                          ? Container(
                              height: height * 0.47,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Workout(),
                                  Weekend(),
                                ],
                              ),
                            )
                          : Row(children: [
                              Container(
                                width: height * 0.95,
                                child: Workout(),
                              ),
                              Container(
                                width: height * 0.95,
                                child: Weekend(),
                              ),
                            ]),
                      // width < 450
                      //     ? Workout()
                      //     : Container(
                      //         width: height * 0.95,
                      //         child: Workout(),
                      //       ),
                      // width < 450
                      //     ? Weekend()
                      //     : Container(
                      //         width: height * 0.95,
                      //         child: Weekend(),
                      //       ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
