import 'package:better_player/better_player.dart';
import 'package:e3/Color/color.dart';
import 'package:e3/channel/ChannelVideosTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChannelPage extends StatefulWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  late Widget networkPlayerWidget;

  @override
  void initState() {
    super.initState();
    // initialize Better Player
    networkPlayerWidget = AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer.network(
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mWhite,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: mBackgroundColor,
            )),
        title: Row(
          children: [
            Text(
              'Channel Name',
              style: TextStyle(
                  color: mBackgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: mBackgroundColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more),
            color: mBackgroundColor,
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,

                backgroundColor: mWhite,
                toolbarHeight: 200,
                //expandedHeight: 260.0,
                floating: false,
                pinned: true,
                //snap: false,

                flexibleSpace:

                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Image.asset(
                              'assets/images/banner.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Channel Name',
                                      style: TextStyle(
                                        color: mBackgroundColor,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '1500  Views',
                                      style: TextStyle(
                                        color: mBack,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notifications),
                                color: mBackgroundColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                bottom: TabBar(
                  indicatorColor: Colors.grey,
                  labelColor: Colors.black26,
                  tabs: [
                    Tab(
                      // icon: Icon(
                      //   Icons.roofing,
                      //   color: mBackgroundColor,
                      // ),
                      text: ('Videos'),
                    ),
                    Tab(
                      text: ('Playlists'),
                      // icon: Icon(
                      //   Icons.star,
                      //   color: mBackgroundColor,
                      // )
                    ),
                    Tab(
                      // icon: Icon(
                      //   Icons.roofing,
                      //   color: mBackgroundColor,
                      // ),
                      text: ('About'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [

              ChannelVideosTab(),
              Center(
                  child: Text(
                'In Progress',
                style: TextStyle(color: mWhite),
              )),
              Center(
                  child: Text(
                'In Progress',
                style: TextStyle(color: mWhite),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

