import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpresse;

  const MyButton({super.key,
    required this.title,
    this.color= const Color(0xffa5a5a5),
    required this.onpresse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.02,
      vertical: MediaQuery.of(context).size.width*0.02,
      ),
      child: InkWell(
        onTap: onpresse,
        child: Container(
          width: MediaQuery.of(context).size.width*0.21,
          height:MediaQuery.of(context).size.width*0.21,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,

          ),
          child: Center(child: Text(title,style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),)),
        ),
      ),
    );
  }
}
