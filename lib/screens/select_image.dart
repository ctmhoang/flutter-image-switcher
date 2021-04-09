import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imgswitcher/components/image_thumbnail.dart';
import 'package:imgswitcher/screens/image_view.dart';

class SelectImage extends StatelessWidget {
  final List<ImageThumbnail> data = [
    ImageThumbnail('https://baconmockup.com/300/200'),
    ImageThumbnail('https://placebear.com/200/300'),
    ImageThumbnail('https://spaceholder.cc/800x600'),
    ImageThumbnail('https://picsum.photos/200/300'),
  ];
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
            onTap: () => _navigateToView(context, idx), child: data[idx]),
        itemCount: 4,
      ),
    );
  }

  void _navigateToView(BuildContext context, int idx) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ImageView(
                  data,
                  backgroundDecoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  initialIndex: idx,
                )));
  }
}
