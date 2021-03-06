import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../../widgets/CustomButton.dart';
import '../../widgets/CustomTextFeld.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomTextField(
          title: "Full Name",
          hint: "Your Full Name",
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget emailInput() {
        return const CustomTextField(
          title: "Email Address",
          hint: "Your Email Address",
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget passwordInput() {
        return const CustomTextField(
          title: "Password",
          hint: "Your Password",
          obscure: true,
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget hobbyInput() {
        return const CustomTextField(
          title: "Hobby",
          hint: "Your Hobby",
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget submitButton() {
        return CustomButton(
            title: "Sign Up",
            onPressed: () {
              Navigator.pushNamed(context, "/bonus");
            });
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 73,
        ),
        child: Text(
          "Terms and Condition",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
