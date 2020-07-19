import 'package:flutter/material.dart';
import 'constants.dart';
import 'custom_container.dart';
import 'bottom_bar.dart';
import 'user_details.dart';
import 'gender_palette.dart';
import 'red_button.dart';

class LogOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        // can fill the functionality later
                      },
                      child: Icon(
                        Icons.reply,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Image.asset(
                      'images/logo.png',
                      width: 80.0,
                    ),
                  ),
                ],
              ),
            ),
            CustomContainer(
              customChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  UserDetails(),
                  GenderRow(),
                  Text(
                    'You can change your gender preference here',
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  RoundedButton(
                    textVerticalPadding: 10,
                    colorWeWant: kRedWeWant,
                    extHorizontalPadding: 15.0,
                    extVerticalPadding: 16.0,
                    textHorizontalPadding: 100,
                    title: 'LOGOUT',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
