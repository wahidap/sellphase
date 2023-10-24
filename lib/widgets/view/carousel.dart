// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class CarouselWithControls extends StatefulWidget {
//   @override
//   _CarouselWithControlsState createState() => _CarouselWithControlsState();
// }

// class _CarouselWithControlsState extends State<CarouselWithControls> {
//   int _currentIndex = 0;
//   List<String> _images = [
   
//     'assets/images/ADD01.PNG',
//     'assets/images/ADD02.PNG',
//     'assets/images/ADD03.PNG',
   
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             height: 180.0,
//             initialPage: 0,
//             enlargeCenterPage: true,
//             onPageChanged: (index, _) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//           items: _images.map((image) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   margin: EdgeInsets.symmetric(horizontal: 5.0),
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                   ),
//                   child: Image.asset(
//                     image,
//                     fit: BoxFit.fill,
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: _images.map((image) {
//             int index = _images.indexOf(image);
//             return Container(
//               width: 8.0,
//               height: 8.0,
//               margin: EdgeInsets.symmetric(horizontal: 4.0),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: _currentIndex == index ? Colors.blue : Colors.grey,
//               ),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }




import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _currentIndex = 0;
  List<String> _imageList = [
    'assets/images/ADD01.PNG',
   'assets/images/ADD02.PNG',
    'assets/images/ADD03.PNG',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imageList.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  
                  
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), 
                  child: Image.asset(
                    image,
                   
                    fit: BoxFit.cover,
                  ),),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _imageList.map((image) {
            int index = _imageList.indexOf(image);
            return Container(
              width: 15.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _currentIndex == index ? Colors.grey.shade800 : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}