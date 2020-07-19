import 'package:flutter/material.dart';
import 'package:log_out_page/constants.dart';
import 'package:log_out_page/custom_container.dart';
import 'package:log_out_page/red_button.dart';
import 'bottom_bar.dart';

class SalonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundBlack,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kBackgroundBlack,
          title: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.reply,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Text(
                  'SALON X',
                ),
              ),
            ],
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomContainer(
              customChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'images/test_image.png',
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: kBookAppointmentDecoration,
                      child: Text('BOOK AN APPOINTMENT'),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: RoundedButton(
                                textVerticalPadding: 10,
                                extVerticalPadding: 0,
                                colorWeWant: kRedWeWant,
                                title: 'SUNDAY',
                                textHorizontalPadding: 15,
                                extHorizontalPadding: 18),
                          ),
                          Expanded(
                            flex: 1,
                            child: RoundedButton(
                              textVerticalPadding: 10,
                              extVerticalPadding: 5,
                              colorWeWant: kRedWeWant,
                              title: 'JULY 20',
                              textHorizontalPadding: 0,
                              extHorizontalPadding: 18,
                            ),
                          ),
                        ],
                      ),
                      RoundedButton(
                        textVerticalPadding: 0,
                        extVerticalPadding: 10,
                        colorWeWant: Colors.black,
                        title: '6:00 PM',
                        textHorizontalPadding: 20,
                        extHorizontalPadding: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RoundedButton(
              extVerticalPadding: 20,
              textVerticalPadding: 5,
              colorWeWant: kRedWeWant,
              extHorizontalPadding: 80.0,
              title: 'Continue',
              textHorizontalPadding: 20,
              onPressed: () {},
            ),
            BottomBar(),
          ],
        ),
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        child: Drawer(
          child: Container(
            color: kRedWeWant,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/ray.png'),
                          radius: 28,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'BAARBA',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'www.baarba.com',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffeb4d65),
                  ),
                ),
                CustomTile(
                  txt: 'Home',
                  icon: Icons.home,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CustomTile(
                  txt: 'Coupons',
                  icon: Icons.local_play,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CustomTile(
                  txt: 'Cart',
                  icon: Icons.shopping_cart,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CustomTile(
                  txt: 'Setting',
                  icon: Icons.settings,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String txt;
  CustomTile({this.txt, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              txt,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
