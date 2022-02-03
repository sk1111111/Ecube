/*import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class ResolutionsPage extends StatefulWidget {
  @override
  _ResolutionsPageState createState() => _ResolutionsPageState();
}

class _ResolutionsPageState extends State<ResolutionsPage> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
    BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
    );
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      Constants.exampleResolutionsUrls.values.first,
      resolutions: Constants.exampleResolutionsUrls,
      notificationConfiguration: BetterPlayerNotificationConfiguration(
        showNotification: true,
        title: "Elephant dream",
        author: "Some author",
        //imageUrl: Constants.catImageUrl,
      ),
      subtitles: [
      BetterPlayerSubtitlesSource(
      type: BetterPlayerSubtitlesSourceType.network,
      name: "EN",
      urls: [
        "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
      ],
    ),
        BetterPlayerSubtitlesSource(
        type: BetterPlayerSubtitlesSourceType.network,
        name: "DE",
        urls: [
        "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
        ],
    ),
    ],
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(dataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resolutions"),
      ),
      body: Column(children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Video with different resolutions to select. Click on overflow icon"
                " (3 dots in right corner) and select different qualities.",
            style: TextStyle(fontSize: 16),
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayer(controller: _betterPlayerController),
        ),
        ElevatedButton(onPressed: (){
          NotificationApi.showNotification(
            title:'New videos',
            body:'hey'
          );
        }, child: Text('notification'))
      ]),
    );
  }
}

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static Future _notificationDetails() async{
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id','channel name',importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }
  static Future showNotification({
  int id=0,
    String? title,
    String? body,
    String? payload,

})async => _notifications.show(id, title, body, _notificationDetails(),payload: payload);
}


class Constants{
  static const Map<String, String> exampleResolutionsUrls = {
    "LOW":
    "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4",
    "MEDIUM":
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    //"https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_640_3MG.mp4",
    "LARGE":
    "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_1280_10MG.mp4",
    "EXTRA_LARGE":
    "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_1920_18MG.mp4"
  };
}*/

/*import 'package:better_player/better_player.dart';

import 'package:flutter/material.dart';

class NotificationPlayerPage extends StatefulWidget {
  @override
  _NotificationPlayerPageState createState() => _NotificationPlayerPageState();
}

class _NotificationPlayerPageState extends State<NotificationPlayerPage> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
    BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      handleLifecycle: true,
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _setupDataSource();
    super.initState();
  }

  void _setupDataSource() async {
    // String imageUrl = await Utils.getFileUrl(Constants.logo);
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      Constants.elephantDreamVideoUrl,

      notificationConfiguration: BetterPlayerNotificationConfiguration(

        showNotification: true,
        title: "Elephant dream",
        author: "Some author",
        //imageUrl: Constants.catImageUrl,
      ),
    );
    _betterPlayerController.setupDataSource(dataSource);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification player"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Click play on player to show notification in status bar.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(controller: _betterPlayerController),
          ),
        ],
      ),
    );
  }
}*/
// import 'package:better_player/better_player.dart';
//
// import 'package:flutter/material.dart';
//
// class RotationAndFitPage extends StatefulWidget {
//   @override
//   _RotationAndFitPageState createState() => _RotationAndFitPageState();
// }
//
// class _RotationAndFitPageState extends State<RotationAndFitPage> {
//   late BetterPlayerController _betterPlayerController;
//
//   @override
//   void initState() {
//     BetterPlayerConfiguration betterPlayerConfiguration =
//     BetterPlayerConfiguration(
//       aspectRatio: 1.0,
//       fit: BoxFit.fill,
//       rotation: 90,
//     );
//     BetterPlayerDataSource dataSource = BetterPlayerDataSource(
//         BetterPlayerDataSourceType.network, Constants.elephantDreamVideoUrl,);
//     _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
//     _betterPlayerController.setupDataSource(dataSource);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Rotation and fit"),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 8),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               "Player with different rotation and fit.",
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//           AspectRatio(
//             aspectRatio: 1.0,
//             child: BetterPlayer(controller: _betterPlayerController),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class Constants {
//   static const String elephantDreamVideoUrl =
//       "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4";
//   static String elephantDreamStreamUrl =
//       "http://cdn.theoplayer.com/video/elephants-dream/playlist.m3u8";
// }

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

/// This is a implementation of the Country State City Picker.


class MyHomePage extends StatefulWidget {
  MyHomePage({ Key? key, }) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Variables to store country state city data in onChanged method.
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  @override
  Widget build(BuildContext context) {

    GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 600,
            child: Column(
              children: [
                ///Adding CSC Picker Widget in app
                CSCPicker(

                  ///Enable disable state dropdown [OPTIONAL PARAMETER]
                  showStates: true,

                  /// Enable disable city drop down [OPTIONAL PARAMETER]
                  showCities: true,

                  ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                  flagState: CountryFlag.DISABLE,



                  ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      border:
                      Border.all(color: Colors.grey.shade300, width: 1)),

                  ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                  disabledDropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.shade300,
                      border:
                      Border.all(color: Colors.grey.shade300, width: 1)),

                  ///placeholders for dropdown search field
                  countrySearchPlaceholder: "Country",
                  stateSearchPlaceholder: "State",
                  citySearchPlaceholder: "City",

                  ///labels for dropdown
                  countryDropdownLabel: "*Country",
                  stateDropdownLabel: "*State",
                  cityDropdownLabel: "*City",

                  ///Default Country
                  //defaultCountry: DefaultCountry.India,

                  ///Disable country dropdown (Note: use it with default country)
                  //disableCountry: true,

                  ///selected item style [OPTIONAL PARAMETER]
                  selectedItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                  dropdownHeadingStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),

                  ///DropdownDialog Item style [OPTIONAL PARAMETER]
                  dropdownItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///Dialog box radius [OPTIONAL PARAMETER]
                  dropdownDialogRadius: 10.0,

                  ///Search bar radius [OPTIONAL PARAMETER]
                  searchBarRadius: 10.0,

                  ///triggers once country selected in dropdown
                  onCountryChanged: (value) {
                    setState(() {
                      ///store value in country variable
                      countryValue = value;
                    });
                  },

                  ///triggers once state selected in dropdown
                  onStateChanged: (value) {
                    setState(() {
                      ///store value in state variable
                      stateValue = value!;
                    });
                  },


                  ///triggers once city selected in dropdown
                  onCityChanged: (value) {
                    setState(() {
                      ///store value in city variable
                      cityValue = value!;
                    });
                  },
                ),

                ///print newly selected country state and city in Text Widget
                TextButton(
                    onPressed: () {
                      setState(() {
                        address = "$cityValue, $stateValue, $countryValue";
                      });
                    },
                    child: Text("Print Data")),
                Text(address)
              ],
            )),
      ),
    );
  }
}