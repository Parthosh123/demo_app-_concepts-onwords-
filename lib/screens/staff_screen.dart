// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
//
// class StaffScreen extends StatefulWidget {
//   @override
//   _StaffScreenState createState() => _StaffScreenState();
// }
//
// class _StaffScreenState extends State<StaffScreen>
//     with SingleTickerProviderStateMixin {
//   AnimationController controller;
//
//   @override
//   void initState() {
//     super.initState();
//
//     controller = AnimationController(
//       duration: Duration(seconds: 1),
//       vsync: this,
//     );
//
//     controller.forward();
//
//     controller.addListener(() {
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         toolbarHeight: 100.0,
//         backgroundColor: Colors.transparent,
//         //backgroundColor: Color(0x3D3D3B),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             AnimatedTextKit(
//               animatedTexts: [
//                 TypewriterAnimatedText(
//                   'onWords',
//                   textStyle: TextStyle(
//                     fontSize: 30.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             Image(
//               image: AssetImage('images/mainLogo.png'),
//               height: 60.0,
//             ),
//           ],
//         ),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("images/welcomepage.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child:
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/screens/profile_screen.dart';

final List<String> imagesList = [
  'images/eHuman.jpeg',
  'images/dq.jpeg',
  'images/thomas.jpeg',
  'images/thomas1.jpeg',
];
final List<String> titles = [
  ' eHuman ',
  ' Thomas ',
  ' Dq ',
  ' Shelby ',
];

class StaffScreen extends StatefulWidget {

  @override
  _StaffScreenState createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
  String name;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          'Developers',
        )),
      ),
      body: Builder(builder: (context) {
        if (orientation.index == Orientation.landscape.index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [buildCarouselSlider(context)],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [buildCarouselSlider(context)],
          );
        }
      }),
    );

  }

  CarouselSlider buildCarouselSlider(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return CarouselSlider(
      options: CarouselOptions(
        height: 700.0,
        autoPlay: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
      ),
      items: imagesList
          .map(
            (item) => Padding(
              padding: EdgeInsets.all(40.0),
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                      spreadRadius: 10.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                      spreadRadius: 4.0,
                    ),
                  ],
                ),
                child: GestureDetector(
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Image(
                          height: height,
                          image: AssetImage(item),
                          fit: BoxFit.fitHeight,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            name = '${titles[currentIndex]}',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              backgroundColor: Colors.black45,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(item, name),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
          .toList(),
    );

  }

}
//
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => ImageScreen(item, name),
// ),
// );
// },
