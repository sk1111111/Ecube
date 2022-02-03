import 'package:e3/Color/color.dart';
import 'package:flutter/material.dart';

class AudioCategory extends StatelessWidget {
  const AudioCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mWhite,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: 350,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 4,
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemCount: module.length,
                    itemBuilder: (BuildContext context, index) {
                      return Stack(
                        overflow: Overflow.visible,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            50) //                 <--- border radius here
                                        ),
                                  ),
                                  height: 90,
                                  width: 90,
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundColor: mWhite,
                                    child: CircleAvatar(
                                      radius: 42,
                                      backgroundImage: AssetImage(
                                        module[index].image,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                module[index].inv,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black54),
                              ),

                              // ),
                            ],
                          ),
                        ],
                      );
                    }),
              )
            ],
          )
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
  {"id": "Song", "inv": "Song \nhello", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song\n hello", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/ar.jpg"},
  {"id": "Song", "inv": "Song", "image": "assets/images/banner.jpg"},
];
