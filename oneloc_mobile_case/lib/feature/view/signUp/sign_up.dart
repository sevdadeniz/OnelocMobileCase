import 'package:flutter/material.dart';
import 'package:oneloc_mobile_case/core/constants/icons.dart';
import 'package:oneloc_mobile_case/core/constants/strings.dart';
import 'package:oneloc_mobile_case/core/widgets/appBar/leading_and_text_appBar.dart';
import 'package:oneloc_mobile_case/core/widgets/buttons/elevated_button.dart';
import 'package:oneloc_mobile_case/core/widgets/buttons/text_button.dart';
import 'package:oneloc_mobile_case/feature/view/signIn/sign_in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LeadingAndTextAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: MyStrings.createAccount,
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, bottom: 23.0, top: 10.0),
              child: Text(MyStrings.signUpText),
            ),
            CustomElevatedButton(
                btnText: MyStrings.createAccount,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                }),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: CustomTextButton(
                btnText: MyStrings.signIn,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
