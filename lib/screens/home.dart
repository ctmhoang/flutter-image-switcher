import 'package:flutter/material.dart';
import 'package:imgswitcher/screens/select_image.dart';

class Home extends StatelessWidget {
  final String url;
  Home({this.url});

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
                    image: url == null
                        ? NetworkImage(
                            'https://googleflutter.com/sample_image.jpg')
                        : NetworkImage(url),
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
