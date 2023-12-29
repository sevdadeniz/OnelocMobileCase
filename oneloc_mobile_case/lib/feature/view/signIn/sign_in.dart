import 'package:flutter/material.dart';
import 'package:oneloc_mobile_case/core/constants/strings.dart';
import 'package:oneloc_mobile_case/core/widgets/appBar/leading_and_text_appBar.dart';
import 'package:oneloc_mobile_case/core/widgets/buttons/elevated_button.dart';
import 'package:oneloc_mobile_case/core/widgets/buttons/text_button.dart';
import 'package:oneloc_mobile_case/feature/view/signUp/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LeadingAndTextAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: MyStrings.signIn,
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          children: [
            CustomElevatedButton(
                btnText: MyStrings.signIn,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                  );
                }),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: CustomTextButton(
                btnText: MyStrings.createAccount,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
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
