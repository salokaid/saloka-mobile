import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key key}) : super(key: key);

  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  PageController _pageController;

  void _onScroll(){
    //print('ssss');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0
    )..addListener(_onScroll);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(image : 'images/Slider-1.png'),
          makePage(image : 'images/Slider-2.png'),
          makePage(image : 'images/Slider-3.png')  
        ],
      ),
    );
  }
}

Widget makePage({image}){
  return new Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover
      ),
    ),
    child: new Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          stops: [0.3, 0.9],
          colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2)
          ]
        )
      ),
      
      
    ),
  );
}