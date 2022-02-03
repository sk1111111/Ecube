import 'package:e3/Color/color.dart';
import 'package:flutter/material.dart';

class ChannelVideosTab extends StatefulWidget {
  const ChannelVideosTab({Key? key}) : super(key: key);

  @override
  _ChannelVideosTabState createState() => _ChannelVideosTabState();
}

class _ChannelVideosTabState extends State<ChannelVideosTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //maxCrossAxisExtent: 200,
                  //childAspectRatio: 4 / 2,
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
              itemCount: module.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  alignment: Alignment.center,
                  //child: Text((module[index].image)),
                  decoration: BoxDecoration(
                      color: mWhite,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(module[index].image),
                      ),
                      borderRadius: BorderRadius.circular(1)),
                );
              }),
        ),
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
  {"id": "0.00", "inv": "Coke", "image": "assets/images/coke.jpg"},
  {"id": "0.00", "inv": "HCL", "image": "assets/images/c.jpg"},
  {"id": "0.00", "inv": "Pothys", "image": "assets/images/z3.jpg"},
  {"id": "0.00", "inv": "Titan", "image": "assets/images/s3.jpg"},
  {"id": "0.00", "inv": "Mac", "image": "assets/images/coke.jpg"},
  {"id": "0.00", "inv": "Coke", "image": "assets/images/c.jpg"},
  {"id": "0.00", "inv": "HCL", "image": "assets/images/z3.jpg"},
  {"id": "0.00", "inv": "Pothys", "image": "assets/images/s3.jpg"},
  {"id": "0.00", "inv": "Titan", "image": "assets/images/z3.jpg"},
  {"id": "0.00", "inv": "Mac", "image": "assets/images/s3.jpg"},
];
