import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imgswitcher/screens/image_view.dart';

class SelectImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an image'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
        itemBuilder: (context, idx) => InkWell(
            onTap: () => _navigateToView(context),
            child: Ink.image(
              image: NetworkImage(
                'https://baconmockup.com/300/200',
              ),
              fit: BoxFit.fill,
            )),
        itemCount: 100,
      ),
    );
  }

  void _navigateToView(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ImageView()));
  }
}
