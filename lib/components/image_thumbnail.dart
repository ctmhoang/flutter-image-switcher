import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageThumbnail extends StatelessWidget {
  final resource;

  ImageThumbnail(this.resource);
  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: NetworkImage(
        resource,
      ),
      fit: BoxFit.fill,
    );
  }
}
