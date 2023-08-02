import 'package:flutter/widgets.dart';

class AspectRatioImage extends StatelessWidget {
  final String image;
  final double size;
  final double borderRadius;
  const AspectRatioImage(
      {super.key, required this.image, this.size = 100, this.borderRadius = 8});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}
