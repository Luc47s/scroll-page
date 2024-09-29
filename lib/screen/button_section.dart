
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(15),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      
        children: [
      
          CustomButton(icon: Icons.call, text: 'Call',),
          
          CustomButton(icon: Icons.map, text: 'Route',),
          
          CustomButton(icon: Icons.share, text: 'Share',),
      
      
      
      
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,

    required this.icon,
    required this.text,
    
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
  
      children: [
        Icon(icon ,color: Colors.blue,size: 20,),
        Text(text ,style:const  TextStyle( color: Colors.blue,height:2 ))
      ],
    );
  }
}