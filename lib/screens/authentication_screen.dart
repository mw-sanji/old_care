import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/screens/profile_screen.dart';
import 'package:old_care/utils/colors.dart';
import 'package:old_care/widgets/app_bar.dart';
import 'package:old_care/widgets/navigation_bar.dart';
import 'package:old_care/widgets/text_field.dart';

class AuthenticationScreen extends StatefulWidget {
  final bool isLogin;
  const AuthenticationScreen({super.key, required this.isLogin});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.isLogin ? appBar(text: "Log In") : appBar(text: "Sign Up"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            !widget.isLogin
                ? CustumTextField(
                    controller: userController,
                    hintText: "Username",
                    isPassword: false,
                  )
                : Container(),
            CustumTextField(
                controller: emailController,
                hintText: "Email",
                isPassword: false),
            CustumTextField(
                controller: passwordController,
                hintText: "Password",
                isPassword: true),
            GestureDetector(
              onTap: () {
                widget.isLogin
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => navigationBar(context: context),
                        ))
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ));
              },
              child: widget.isLogin
                  ? Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colours.primaryColor),
                      child: const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    )
                  : Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colours.primaryColor),
                      child: const Center(
                          child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                    ),
            )
          ],
        )),
      ),
    );
  }
}
