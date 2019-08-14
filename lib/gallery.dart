import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';
import 'package:flutter/services.dart';
import './main.dart';
// import 'package:photo_view/photo_view.dart';

class StoryGallery extends StatelessWidget {
  // List<Container> _buildGridTileList(int count) => List.generate(
  //     count, (i) => Container(child: Image.asset('assets/$i.jpg')));
  Future<bool> _onBackPressed(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return showDialog(
      builder: (context)=>AlertDialog(
        title: Text('data'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    
    // return MaterialApp(
    //   theme: ThemeData(
    //     brightness: Brightness.light,
    //     primarySwatch: Colors.deepPurple,
    //     accentColor: Colors.deepOrange,
    //   ),
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Hospice Admission Guideline'),
    //     ),
    //     drawer: HagDrawer(),
    //     body:
    return WillPopScope(
      onWillPop: _onBackPressed,
    child: TheGallery());
  }
}
class TheGallery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new PinchZoomImage(
      image: Image.asset(
          "./assets/$index.jpg",
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
);

      },
      itemCount: 62,
      index: 0,
      pagination: null,
      control: null,
      // itemWidth: 400.0,
      // layout: SwiperLayout.STACK,
      viewportFraction: 1.0,
      scale: 0.5,
      // pagination: new SwiperPagination(),
      // control: new SwiperControl(),
    );
  }
}