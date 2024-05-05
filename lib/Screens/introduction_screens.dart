import 'package:flutter/material.dart';
import 'package:graduation_project_2024/Features/onbording/onbording_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';


class SplashPage extends StatelessWidget {
   SplashPage({super.key});
 bool showNextButton=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
           Padding(
         padding: const EdgeInsets.only(top: 100),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Music App',
              body: 'dsjkrvnjkvnsd dnwekvcnok sdkovnsdov',
              image: new Image.asset('assets/images/music5jpg.jpg') ,
              decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.orange),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
            ),
            PageViewModel(
              title: 'Music App',
              body: 'dsjkrvnjkvnsd dnwekvcnok sdkovnsdov',
              image: new Image.asset('assets/images/music3.jpg') ,
              decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.orange),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
            ),
            PageViewModel(
              title: 'Music App',
              body: 'dsjkrvnjkvnsd dnwekvcnok sdkovnsdov',
              image: new Image.asset('assets/images/music5jpg.jpg') ,
              decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.orange),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
            ),
            PageViewModel(
              title: 'Music App',
              body: 'dsjkrvnjkvnsd dnwekvcnok sdkovnsdov',
              image: new Image.asset('assets/images/music1.jpg') ,
              decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.orange),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
            ),
          ],
        
         onDone: () {},
                // When done button is press
             skip:TextButton( onPressed: () {}, child:Text('Skip',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple),) ,) ,
              showSkipButton: true,
              showNextButton: true,
              next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
              showBackButton: false,
              done: GestureDetector(
                child: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600),),
                onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context){return OnboardingScreen();}),);} ,
                ),
          
        ),
      
      )
    );

   
  }
}