import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_an_account.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';
import 'package:flutter_auth/screens/signup/components/background.dart';
import 'package:flutter_auth/screens/signup/components/or_divider.dart';
import 'package:flutter_auth/screens/signup/components/socalIcon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.028,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.31,
            ),
            SizedBox(
              height: size.height * 0.028,
            ),
            RoundedInputField(hintText: 'YOUR EMAIL', onChanged: (value) {}),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: 'SIGN UP', press: () {}),
            SizedBox(
              height: size.height * 0.028,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
