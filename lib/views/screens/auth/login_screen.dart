// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';
import '../../widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tiktok clone',
              style: TextStyle(
                fontSize: 35,
                color: buttonColour,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: "email",
                icon: Icons.email,
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: TextInputField(
                controller: _passwordController,
                labelText: "password",
                icon: Icons.lock,
                isobscure: true,
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColour,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => authController.loginUser(
                    _emailController.text, _passwordController.text),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('register user');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      color: buttonColour,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
