import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Image'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://googleflutter.com/sample_image.jpg'),
                    fit: BoxFit.fill)),
          ),
          onTap: () {
            print('clicked');
          },
        ),
      ),
    );
  }
}
