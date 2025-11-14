import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ViewportOffset;

class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  final ViewportOffset viewportOffset;
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final count = context.childCount;

    // Total lebar area yang tersedia
    final size = context.size.width;

    // Lebar satu item pada carousel
    final itemExtent = size / filtersPerScreen;

    // Posisi scroll dalam satuan item (contoh: 0.0, 1.3, 2.9, dst)
    final active = viewportOffset.pixels / itemExtent;

    // Item pertama yang harus digambar (maksimal 3 di kiri)
    final min = math.max(0, active.floor() - 3).toInt();

    // Item terakhir yang harus digambar (maksimal 3 di kanan)
    final max = math.min(count - 1, active.ceil() + 3).toInt();

    // Loop menggambar item yang tampak
    for (var index = min; index <= max; index++) {
      final itemXFromCenter = itemExtent * index - viewportOffset.pixels;

      // Semakin dekat ke tengah, semakin besar percentFromCenter
      final percentFromCenter =
          1.0 - (itemXFromCenter / (size / 2)).abs().clamp(0.0, 1.0);

      // Skala item (dari 0.5 → 1.0)
      final itemScale = 0.5 + (percentFromCenter * 0.5);

      // Opacity item (dari 0.25 → 1.0)
      final opacity = 0.25 + (percentFromCenter * 0.75);

      // Transformasi posisi + scaling
      final itemTransform = Matrix4.identity()
        ..translate((size - itemExtent) / 2)
        ..translate(itemXFromCenter)
        ..translate(itemExtent / 2, itemExtent / 2)
        ..scale(itemScale, itemScale)
        ..translate(-itemExtent / 2, -itemExtent / 2);

      context.paintChild(
        index,
        transform: itemTransform,
        opacity: opacity,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    return oldDelegate.viewportOffset != viewportOffset;
  }
}
