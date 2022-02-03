import 'package:e3/Color/color.dart';
import 'package:e3/login/PhoneLogIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: ()=>Get.back(),),
      ),
      backgroundColor: mBackgroundColor,
      body:SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(

                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: TextStyle(fontSize: 25, color: mWhite, height: 1),
                          textAlign: TextAlign.start,
                          onTap: () {},

                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search,color: mWhite,),
                            fillColor: Colors.black,
                            filled: true,
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: const EdgeInsets.all(12),
                            hintText: "search",
                            hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: mWhiteshade,
                            ),
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation:2 ,
                    color: Colors.grey.shade900,
                    child: SizedBox(
                      height:50,
                      child: InkWell(

                          highlightColor: Colors.greenAccent,
                          onTap: (){},
                          splashColor: Colors.greenAccent,
                          child:  Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Profile',style: TextStyle(fontSize: 15,color: mWhite,fontWeight: FontWeight.normal),),
                          )),
                    ),
                  ),
                  Card(
                    elevation:2 ,
                    color: Colors.grey.shade900,
                    child: SizedBox(
                      height:50,
                      child: InkWell(

                          highlightColor: Colors.greenAccent,
                          onTap: (){},
                          splashColor: Colors.greenAccent,
                          child:  Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Your Channel',style: TextStyle(fontSize: 15,color: mWhite,fontWeight: FontWeight.normal),),
                          )),
                    ),
                  ),
                  Card(
                    elevation:2 ,
                    color: Colors.grey.shade900,
                    child: SizedBox(
                      height:50,
                      child: InkWell(

                          highlightColor: Colors.greenAccent,
                          onTap: (){
                            Get.defaultDialog(
                                title: '',
                                backgroundColor: mWhite,
                                content: Container(
                                  width: 900,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Do you want to Sign out?',
                                            style: TextStyle(
                                                color: mBackgroundColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25),
                                          ),
                                          SizedBox(height: 20,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              GestureDetector(
                                                onTap: ()=>Get.to(PhoneLogIn()),
                                                child: Container(
                                                  height: 45,
                                                  width: 100,
                                                  decoration: BoxDecoration(

                                                      border: Border.all(
                                                        color: Colors.black,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.all(Radius.circular(10))),
                                                  child: Center(child: Text('Yes')),
                                                ),
                                              ),

                                              GestureDetector(
                                                onTap: ()=>Get.back(),
                                                child: Container(
                                                  height: 45,
                                                  width: 100,
                                                  decoration: BoxDecoration(

                                                      border: Border.all(
                                                        color: Colors.black,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.all(Radius.circular(10))),
                                                  child: Center(child: Text('No')),
                                                ),
                                              ),
                                            ],
                                          )

                                        ],
                                      ),

                                    ],
                                  ),
                                ));
                          },
                          splashColor: Colors.greenAccent,
                          child:  Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Sign out',style: TextStyle(fontSize: 15,color: mWhite,fontWeight: FontWeight.normal),),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
