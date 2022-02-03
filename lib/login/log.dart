import 'dart:ui';

import 'package:e3/Color/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      backgroundColor: mBackgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Email or username',
              style: TextStyle(
                  color: mWhite, fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(fontSize: 25, color: mWhite, height: 1),
              textAlign: TextAlign.start,
              onTap: () {},
              decoration: InputDecoration(
                fillColor: Colors.grey.shade500,
                filled: true,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                contentPadding: const EdgeInsets.all(16),
                hintText: " ",
                hintStyle: TextStyle(
                  fontSize: 18.0,
                  color: mWhiteshade,
                ),
              ),
              textAlignVertical: TextAlignVertical.center,
              textInputAction: TextInputAction.next,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Password',
              style: TextStyle(
                  color: mWhite, fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(fontSize: 25, color: mWhite, height: 1),
              textAlign: TextAlign.start,
              onTap: () {},
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.visibility,
                  ),
                ),
                fillColor: Colors.grey.shade500,
                filled: true,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                contentPadding: const EdgeInsets.all(16),
                hintText: " ",
                hintStyle: TextStyle(
                  fontSize: 18.0,
                  color: mWhiteshade,
                ),
              ),
              textAlignVertical: TextAlignVertical.center,
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mWhite,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: mWhite, fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Forget Password?',
                style: TextStyle(
                    color: mWhite, fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
