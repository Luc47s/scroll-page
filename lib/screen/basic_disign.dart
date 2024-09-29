
import 'package:flutter/material.dart';

import 'package:myapp/screen/button_section.dart';

class BasicDisign extends StatelessWidget {
  const BasicDisign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/image2-2-1024x649.png',)),

          Title(),

          ButtonSection(),

         
            
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
             child: Text('Marde de torrieux de cossin de charogne de batèche de crucifix de bâtard détole de purée de patente à gosse de ciboire de batince.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
           )

         
          


        
        ],
      )
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child:   Row(
       
        children: [
      
         const  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hielo Lake Campground ',style: TextStyle(fontWeight: FontWeight.bold,),)
              ,Text('Kandersteg, Switzerland',style: TextStyle(fontSize: 15,color:Colors.black45))
      
      
            ],
      
          ),
          Expanded(child: Container()),
      
         const  Icon( Icons.star,color: Colors.red,),
          const Text('41')
        ],
      
      
      ),
    );
  }
}