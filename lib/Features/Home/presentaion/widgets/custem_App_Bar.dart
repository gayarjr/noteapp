import 'package:flutter/material.dart';
import 'package:noteapp/Features/Home/presentaion/widgets/Custem_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        Spacer(),
        CustemSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
