import 'package:flutter/material.dart';


class AdditionalInfoCard extends StatelessWidget {

  // declare constructors so we can change values
  final IconData icon;
  final String label;
  final String value;
  const AdditionalInfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
           children: [
       Icon(
        icon,
        size: 46,),
       const SizedBox(height: 8,),
       Text(label,style: const TextStyle(
        fontSize: 18,
       ),),
       const SizedBox(height: 8,),
       Text(value,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
       ),
       )
      ],
      );
    
  }
}