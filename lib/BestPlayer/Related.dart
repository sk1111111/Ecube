import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Related extends StatelessWidget {
  const Related({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer also watched',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 150,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Tamil',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/z3.jpg',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Container(
                          height: 80,
                          width: 150,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Hindi',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/z3.jpg',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Container(
                          height: 80,
                          width: 150,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'English',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/z3.jpg',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Cast & crew',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Details from IMBs',
                        style: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Tamil',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Tamil',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Tamil',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Tamil',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Tamil',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 130,
                            width: 100,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Tamil',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
