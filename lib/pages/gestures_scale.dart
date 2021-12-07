// import 'package:flutter/material.dart';

// class GesturesScale extends StatefulWidget {
//   @override
//   _GesturesScaleState createState() => _GesturesScaleState();
// }

// class _GesturesScaleState extends State<GesturesScale> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gestures & Scale'),
//       ),
//       body:buildBody(context),
//     );
//   }
// }


// Widget buildBody(BuildContext context){
//   return GestureDetector(
//     child: Stack(
//       fit: StackFit.expand,
//       children: [
//         transformScaleAndTranslate(),
//         positionedStatusBar(context),
//       ],     
//     ),
//     onScaleStart: onScaleStart,
//     onScaleUpdate: onScaleUpdate,
//     onDoubleTap: onDoubleTap,
//     onLongPress: onLongPress,

//   );
// }

// Transform transformScaleAndTranslate() {
//   return Transform.scale(
//     scale: currentScale,
//     child: Transform.translate(offset: currentOffset,child: Image(image: AssetImage('assets/images/lion.jpg'),),),
//     );
// }

// Positioned positionedStatusBar(BuildContext context){
//   return Positioned(
//     top: 0.0,
//     width: MediaQuery.of(context).size.width,
//     child: Container(
//       color: Colors.white54,
//       height: 50,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text('Scale: ${currentScale.toStringAsFixed(4)}',),
//           Text('Current: $currentOffset',),
//         ],
//       ),
//     ),
//   );
// }

// void onScaleStart(ScaleStartDetails details) {
//   print('ScaleStartDetails: $details');
//   startLastOffset = details.focalPoint;
//   lastOffset = currentOffset;
//   lastScale = currentScale;
// }

// void onScaleUpdate(ScaleUpdateDetails details) {
//   print('ScaleUpdateDetails: $details - Scale: ${details.scale}');
//   if (details.scale != 1.0) {
//   // Scaling
//   double currentScale = _lastScale * details.scale;
//   if (currentScale < 0.5) {
//   currentScale = 0.5;
//   }
//   setState(() {
//   currentScale = currentScale;
//   });
//   print('_scale: $_currentScale - _lastScale: $_lastScale');
//   } else if (details.scale == 1.0) {
//   // We are not scaling but dragging around screen
//   // Calculate offset depending on current Image scaling.
//   Offset offsetAdjustedForScale = (_startLastOffset - _lastOffset) /_lastScale;
//   Offset currentOffset = details.focalPoint - (offsetAdjustedForScale *currentScale);
//   setState(() {
//   currentOffset = currentOffset;
//   });
//   print('offsetAdjustedForScale: $offsetAdjustedForScale - _currentOffset:$_currentOffset');
//   }
// }

// void onDoubleTap() {
//   print('onDoubleTap');
//   // Calculate current scale and populate the _lastScale with currentScale
//   // if currentScale is greater than 16 times the original image, reset scale
//   to default, 1.0
//   double currentScale = _lastScale * 2.0;
//   if (currentScale > 16.0) {
//   currentScale = 1.0;
//   _resetToDefaultValues();
//   }
//   _lastScale = currentScale;
//   setState(() {
//   _currentScale = currentScale;
//   });
// }

// void onLongPress() {
//   print('onLongPress');
//   setState(() {
//   resetToDefaultValues();
//   });
// }

// void _resetToDefaultValues() {
//   startLastOffset = Offset.zero;
//   lastOffset = Offset.zero;
//   currentOffset = Offset.zero;
//   lastScale = 1.0;
//   currentScale = 1.0;
// }