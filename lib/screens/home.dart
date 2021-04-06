import 'dart:io';

import 'package:flutter/material.dart';
import 'package:imgswitcher/screens/select_image.dart';

class Home extends StatelessWidget {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Image'),
        centerTitle: true,
      ),
      body: _renderProfileImg(context),
    );
  }

  Widget _renderProfileImg(BuildContext context) {
    return Center(
      child: InkWell(
          borderRadius: BorderRadius.circular(100),
          child: Ink(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: _image == null
                        ? NetworkImage(
                            'https://googleflutter.com/sample_image.jpg')
                        : FileImage(_image),
                    fit: BoxFit.fill)),
          ),
          onTap: () => _navigateToSelectPage(context)),
    );
  }

  void _navigateToSelectPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectImage()));
  }
}
