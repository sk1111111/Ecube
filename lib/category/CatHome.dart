import 'package:e3/BestPlayer/Best.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gqq extends StatelessWidget {

  const Gqq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 100,

                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemCount: module.length,
              itemBuilder: (BuildContext context, index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Best());
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          module[index].inv,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              module[index].image.toString(),
                            ),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class SnapModel {
  String? image;

  SnapModel(this.image);
}

List<SnapModel> snaps =
    snapsData.map((item) => SnapModel(item['image'])).toList();

var snapsData = [
  {"image": "assets/images/z5.jpg"},
  {"image": "assets/images/z4.jpg"},
  {"image": "assets/images/z3.jpg"},
  {"image": "assets/images/z4.jpg"},
  {"image": "assets/images/z5.jpg"},
];

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
  {"id": "", "inv": "Tamil", "image": "assets/images/z1.jpg"},
  {"id": "", "inv": "English", "image": "assets/images/z4.jpg"},
  {"id": "", "inv": "Telugu", "image": "assets/images/z3.jpg"},
  {"id": "", "inv": "Malayalam", "image": "assets/images/z4.jpg"},
  {"id": "", "inv": "Kannada", "image": "assets/images/z5.jpg"},
  {"id": "", "inv": "Marathi", "image": "assets/images/z4.jpg"},
  {"id": "", "inv": "Punjabi", "image": "assets/images/z5.jpg"},
];
