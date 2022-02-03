import 'package:e3/BestPlayer/PageTab.dart';
import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class Bestone extends StatefulWidget {
  const Bestone({Key? key}) : super(key: key);

  @override
  _BestoneState createState() => _BestoneState();
}

class _BestoneState extends State<Bestone> {
  late Widget networkPlayerWidget;

  @override
  void initState() {
    super.initState();
    // initialize Better Player
    networkPlayerWidget = AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer.network(
        'https://kanyaaresidency.com/Video/Rhymes/Rhymes1.mp4',
        betterPlayerConfiguration: BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
          fullScreenAspectRatio: 16 / 9,
          autoPlay: true,
          placeholder: Center(child: CircularProgressIndicator()),
          allowedScreenSleep: false,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black87,
          body: ListView(
            physics: ClampingScrollPhysics(),
            //NeverScrollableScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: networkPlayerWidget,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Movie (Tamil)',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ))),
                        Text(
                          'favorite',
                          style: TextStyle(color: Colors.white54),
                        )
                      ]),
                      Column(children: [
                        Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.red,
                                ))),
                        Text(
                          'WatchList',
                          style: TextStyle(color: Colors.white54),
                        )
                      ]),
                      Column(children: [
                        Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Icon(
                                  Icons.share,
                                  color: Colors.red,
                                ))),
                        Text(
                          'share',
                          style: TextStyle(color: Colors.white54),
                        )
                      ]),
                      Column(children: [
                        Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Icon(
                                  Icons.comment,
                                  color: Colors.red,
                                ))),
                        Text(
                          'Comments',
                          style: TextStyle(color: Colors.white54),
                        )
                      ]),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      // width: (MediaQuery.of(context).size.width / 4 +
                      //         MediaQuery.of(context).size.width / 2) -
                      //     10.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Suits is an American legal drama television series created and written by Aaron Korsh. The series premiered on USA Network on June 23, 2011 and is produced by Universal Cable Productions. The series concluded on September 25, 2019.',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      child: PageTab()),
                ],
              )
            ],
          )),
    );
  }
}
