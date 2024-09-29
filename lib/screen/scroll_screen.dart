
import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor:const  Color( 0xff30BAD6),
        body: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page01(),
            Page02(),
          
          
          ],
          ),
          );
  }
}

class Page01 extends StatelessWidget {
  const Page01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
          Background(),
          MainContent()
        ]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const   textStyle = TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white);
    return  SafeArea(

      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50,),
         
          const  Text('11°C',style: textStyle),
          const Text('Miércoles',style: textStyle),
          Expanded(child:   Container()),
          const Icon(Icons.keyboard_arrow_down,size: 100,color: Colors.white,)
          ,
          
        ],
      
        
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
  

    return   Container(
       
      height: double.infinity,
      color: const Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      child: const  Image(
        width: double.infinity,
        image: AssetImage('assets/scroll-1.png',),
        fit: BoxFit.cover,
      ),
    );
  }
}

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    
    return   Container(
      color:const Color(0xff30BAD6),
      child:Center(
        child: TextButton(onPressed: (){
          Navigator.pushReplacementNamed(context, 'basic_design');
        },
        style: TextButton.styleFrom(
          backgroundColor:const  Color(0xff0098FA),
          shape: const StadiumBorder()
        ), 
          child: const  Padding(
           padding:  EdgeInsets.symmetric(horizontal: 35),
           child:    Text( 'BIENVENIDOS',style: TextStyle(color: Colors.white,fontSize: 19),
                   ),
         ),
        )
      ),
    );
  }
}