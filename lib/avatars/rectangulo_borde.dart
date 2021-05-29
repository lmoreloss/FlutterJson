import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

class RectangularAvatarBorde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Rectangular con Borde'),
      ),
      body: Center(
        child: Container(
          child: AvatarView(
            radius: 60,
            borderColor: Colors.green,
            avatarType: AvatarType.RECTANGLE,
            borderWidth: 5,
            backgroundColor: Colors.red,
            imagePath:
                "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg",
            placeHolder: Container(
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            errorWidget: Container(
              child: Icon(
                Icons.error,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
