import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController animationController1;
  late AnimationController animationController2;
  late Animation<Offset> animation1;
  late Animation<Offset> animation2;

  @override
  void initState() {
    animationController1 =AnimationController(vsync: this,duration: Duration(seconds: 3));
    animationController2 =AnimationController(vsync: this,duration: Duration(seconds: 3));
    animation1 =  Tween(begin:Offset(0, -7) ,end:Offset(0, 0) ).animate(animationController1);
    animation2 =  Tween(begin:Offset(0, 7) ,end:Offset(0, 0) ).animate(animationController2);
    animationController1.forward();
    animationController2.forward();
    // TODO: implement initState
    super.initState();
    gotohomescreen();
  }

  gotohomescreen(){
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context,"homescreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SlideTransition(
              position: animation1,
              child: Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("images/logo.png"),))),
            ),
            SizedBox(height: 20,),
            SlideTransition(
              position: animation2,
              child: Text("Read Books",style: TextStyle(fontSize: 15,),),
            )
          ],
        ),
      ),
    );
  }
}
//https://images.pexels.com/photos/1370295/pexels-photo-1370295.jpeg?auto=compress&cs=tinysrgb&w=600