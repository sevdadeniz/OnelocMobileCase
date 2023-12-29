import 'package:flutter/material.dart';
import 'package:oneloc_mobile_case/core/constants/strings.dart';
import 'package:oneloc_mobile_case/core/widgets/buttons/elevated_button.dart';
import 'package:oneloc_mobile_case/feature/view/signUp/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(MyStrings.hello),
                    Text(MyStrings.welcomeText),
                  ],
                ),
              ),
              Column(
                children: [
                  CustomElevatedButton(
                      btnText: MyStrings.createAccount,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                        );
                      }),
                  CustomElevatedButton(
                    btnText: MyStrings.signIn,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
