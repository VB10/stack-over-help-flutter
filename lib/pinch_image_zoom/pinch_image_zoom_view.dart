import 'package:flutter/material.dart';
import './pinch_image_zoom_view_model.dart';
import 'pinch_image_zoom.dart';

class PincImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return PinchImageZoom();
            },
          );
        },
      ),
    );
  }
}

class PinchImageZoomView extends PinchImageZoomViewModel {
  final String imageUrl = "https://picsum.photos/1200";

  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Material(
      child: buildGestureDetector,
    );
  }

  Widget get buildGestureDetector => GestureDetector(
        child: Stack(
          fit: StackFit.expand,
          children: [
            _transformScaleAndTranslate(),
            _positionedStatusBar(context)
          ],
        ),
        onScaleStart: onScaleStart,
        onScaleUpdate: onScaleUpdate,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
      );

  Transform _transformScaleAndTranslate() {
    return Transform.scale(
      scale: currentScale,
      child: Transform.translate(
        offset: currentOffset,
        child: Image(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Transform _transformMatrix4() {
    return Transform(
      transform: Matrix4.identity()
        ..scale(currentScale, currentScale)
        ..translate(
          currentOffset.dx,
          currentOffset.dy,
        ),
      alignment: FractionalOffset.center,
      child: Image(
        image: NetworkImage(imageUrl),
      ),
    );
  }

  Positioned _positionedStatusBar(BuildContext context) {
    return Positioned(
      top: 0.0,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: Colors.white54,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Scale: ${currentScale.toStringAsFixed(4)}',
            ),
            Text(
              'Current: $currentOffset',
            ),
          ],
        ),
      ),
    );
  }
}
