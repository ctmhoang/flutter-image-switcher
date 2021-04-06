import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('here');
    return Container(
        child: PhotoView(
      imageProvider: NetworkImage(
        'https://baconmockup.com/300/200',
      ),
    ));
  }
}
