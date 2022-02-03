import 'package:e3/Color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: Icon(
              Icons.arrow_back_ios,
            ),

            backgroundColor: mBackgroundColor,
            //toolbarHeight: 200,

            floating: true,
            pinned: true,
            //snap: false,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'A.R. Rahman',
                textScaleFactor: 1,
                style: TextStyle(color: mWhite),
              ),
              background: Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1500k  listeners',
                              style: TextStyle(
                                color: mWhiteshade,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: mWhite,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Center(
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(
                                            color: mWhite,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {
                                    Get.bottomSheet(
                                      Container(
                                          height: 200,
                                          color: mBackgroundColor,
                                          child: Column(
                                            children: [
                                              ListTile(
                                                leading: Icon(
                                                  Icons.person,
                                                  color: mBlueColor,
                                                ),
                                                title: Container(
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: mBlueColor,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Center(
                                                      child: Text(
                                                        'Follow',
                                                        style: TextStyle(
                                                            color: mWhite,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ListTile(
                                                leading: Icon(
                                                  Icons.share,
                                                  color: mBlueColor,
                                                ),
                                                title: Container(
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: mBlueColor,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Center(
                                                      child: Text(
                                                        'Share',
                                                        style: TextStyle(
                                                            color: mWhite,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                      barrierColor: mBack,
                                      isDismissible: false,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: BorderSide(
                                              width: 5, color: Colors.black)),
                                      enableDrag: true,
                                    );
                                  },
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: mWhite,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          color: CupertinoColors.secondarySystemBackground,
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                        color: mWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: 320,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: module.length,
                    padding: EdgeInsets.only(left: 1.0, right: 5),
                    //scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 120,
                          width: 60,
                          child: Image.asset(
                            module[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(module[index].inv,
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: mWhite,
                            )),
                        subtitle: Text(module[index].id,
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: mWhiteshade,
                            )),
                        trailing: Icon(
                          Icons.more_vert,
                          color: mWhiteshade,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Featuring AR',
                    style: TextStyle(
                        color: mWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                    itemCount: module.length,
                    padding: EdgeInsets.only(left: 1.0, right: 16),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 140,
                              width: 140,
                              child: Image.asset(
                                module[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            module[index].inv,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: mWhiteshade),
                          ),
                          // ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Artist',
                    style: TextStyle(
                        color: mWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                    itemCount: module.length,
                    padding: EdgeInsets.only(left: 1.0, right: 16),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 140,
                              width: 140,
                              child: CircleAvatar(
                                //radius: 48,
                                backgroundImage: AssetImage(
                                  module[index].image,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            module[index].inv,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: mWhiteshade),
                          ),
                          // ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ModuleDestinationModel {
  String? id;
  String? inv;
  String? image;

  ModuleDestinationModel(this.id, this.inv, this.image);
}

List module = moduleData
    .map((item) =>
        ModuleDestinationModel(item['id'], item['inv'], item['image']))
    .toList();

var moduleData = [
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
];
