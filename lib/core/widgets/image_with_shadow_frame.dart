import 'package:flutter/cupertino.dart';

import '../../generated/assets.dart';
import 'container_with_boxshadow.dart';

class ImageWithShadowFrame extends StatelessWidget {
  const ImageWithShadowFrame({super.key, this.aspectRatio=129/109});
  final double?  aspectRatio;
  @override
  Widget build(BuildContext context) {
    return ContainerWithBoxShadow(
        height: MediaQuery.of(context).size.height * .15,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: aspectRatio!,
              child: Image.asset(
                Assets.imagesClothing,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}
