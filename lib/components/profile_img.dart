import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundColor: Colors.pink[300],
          radius: 85,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/my-profile.jpg'),
            radius: 80,
          ),
        ),
        CircleAvatar(
          backgroundColor: bgPrimaryColor,
          radius: 20,
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

