import 'package:flutter/material.dart';
import './pinch_image_zoom.dart';

abstract class PinchImageZoomViewModel extends State<PinchImageZoom> {
  // Add your state and logic here
  Offset startLastOffset = Offset.zero;
  Offset lastOffset = Offset.zero;
  Offset currentOffset = Offset.zero;
  double lastScale = 1.0;
  double currentScale = 1.0;

  void onScaleStart(ScaleStartDetails details) {
    // print('ScaleStartDetails: $details');
    startLastOffset = details.focalPoint;
    lastOffset = currentOffset;
    lastScale = currentScale;
  }

  void onScaleUpdate(ScaleUpdateDetails details) {
    // print('ScaleUpdateDetails: $details - Scale: ${details.scale}');
    if (details.scale != 1.0) {
      // Scaling
      double currentScale = lastScale * details.scale;
      if (currentScale < 0.5) {
        currentScale = 0.5;
      }
      setState(() {
        this.currentScale = currentScale;
      });
      // print('_scale: $_currentScale - lastScale: $lastScale');
    } else if (details.scale == 1.0) {
      // We are not scaling but dragging around screen
      // Calculate offset depending on current Image scaling.
      Offset offsetAdjustedForScale =
          (startLastOffset - lastOffset) / lastScale;
      Offset currentOffset =
          details.focalPoint - (offsetAdjustedForScale * currentScale);
      setState(() {
        currentOffset = currentOffset;
      });

      // print(
      //     'offsetAdjustedForScale: $offsetAdjustedForScale - currentOffset: $currentOffset');
    }
  }

  void onDoubleTap() {
    print('onDoubleTap');
    // Calculate current scale and populate the lastScale with currentScale
    // if currentScale is greater than 16 times the original image, reset scale to default, 1.0
    double currentScale = lastScale * 2.0;
    if (currentScale > 16.0) {
      currentScale = 1.0;
      resetToDefaultValues();
    }
    lastScale = currentScale;
    setState(() {
      this.currentScale = currentScale;
    });
  }

  void onLongPress() {
    print('onLongPress');
    setState(() {
      resetToDefaultValues();
    });
  }

  void resetToDefaultValues() {
    startLastOffset = Offset.zero;
    lastOffset = Offset.zero;
    currentOffset = Offset.zero;
    lastScale = 1.0;
    currentScale = 1.0;
  }
}
