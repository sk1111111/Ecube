import 'package:e3/Color/color.dart';
import 'package:e3/login/chart/BaChart.dart';
import 'package:e3/login/chart/Pop.dart';
import 'package:e3/login/chart/Radarchart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeDash extends StatelessWidget {
  const HomeDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Dashboard',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),),

      ),
      backgroundColor: Colors.black,
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:210,child: Card(
                color: Colors.grey.shade900,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(

                            height:100,

                              child: Card(color: Colors.black,child:  Container(

                                alignment: Alignment.center,
                                child: Text(
                                  '49',
                                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/dash1.jpeg',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                              ))),
                        ),
                        Expanded(
                          child: Container(

                              height:100,

                              child: Card(color: Colors.black,child:  Container(

                                alignment: Alignment.center,
                                child: Text(
                                  '5000 /-',
                                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/dash2.jpeg',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                              ))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(

                              height:100,

                              child: Card(color: Colors.black,child:  Container(

                                alignment: Alignment.center,
                                child: Text(
                                  '50000 /-',
                                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/dash3.jpeg',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                              ))),
                        ),
                        Expanded(
                          child: Container(

                              height:100,

                              child: Card(color: Colors.black,child:  Container(

                                alignment: Alignment.center,
                                child: Text(
                                  '50*',
                                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w900),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/dash4.jpeg',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                              ))),
                        ),
                      ],
                    ),

                  ],
                )
            )),
          ),

          Container(
            height: 300,
            child: PieChartSample3(),
          ),

          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LineChartSample1(),
            ),


          ),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BarChartSample2(),
            ),
          ),
        ],
      ),
    );
  }
}
