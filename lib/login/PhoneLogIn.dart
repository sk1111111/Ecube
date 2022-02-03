import 'package:e3/Color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneLogIn extends StatefulWidget {
  const PhoneLogIn({Key? key}) : super(key: key);

  @override
  _PhoneLogInState createState() => _PhoneLogInState();
}

class _PhoneLogInState extends State<PhoneLogIn> {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter Phone Number',
                  style: TextStyle(
                      color: mWhite, fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                    color: mWhite,
                    height: 1,
                  ),
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
                    hintText: " Phone number",
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      color: mWhiteshade,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '+91',
                        style: TextStyle(fontSize: 20, color: mWhite),
                      ),
                    ),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  textInputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'We\'ll send you a code by SMS to confirm your phone number.',
                  style: TextStyle(
                      color: mWhite, fontWeight: FontWeight.bold, fontSize: 12),
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
                      'Next',
                      style: TextStyle(
                          color: mWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
