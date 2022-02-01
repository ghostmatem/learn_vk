import 'package:flutter/material.dart';

class FakeIconWidget extends StatelessWidget {
  const FakeIconWidget({ Key? key, required this.size, this.avatar = ""}) : super(key: key);

  final double size;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    if (avatar == "") {
      return Placeholder(fallbackWidth: size, fallbackHeight: size); 
    }
    return SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(foregroundImage: NetworkImage(avatar)));
  }
}