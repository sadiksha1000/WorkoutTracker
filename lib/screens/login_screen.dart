import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workout_tracker/constants/navigation.dart';
import 'package:workout_tracker/widgets/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 130, 221),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 200),
            Image.asset(
              'assets/fire.png',
              height: 170,
            ),
            Text('FIREFIT',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              'Stay in shape, Stay healthy',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 23,
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: 100),
            RoundedButton(
              title: 'Sign Up',
              butColor: Colors.white,
              textColor: Color.fromARGB(255, 19, 130, 221),
              onTapFunc: () {},
            ),
            SizedBox(height: 15),
            RoundedButton(
              title: 'Login',
              butColor: Colors.white,
              textColor: Color.fromARGB(255, 19, 130, 221),
              onTapFunc: () {
                Navigator.of(context).pushNamed(homeRoute);
              },
            ),
            SizedBox(height: 15),
            Text(
              'Forgot your Password ?',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
