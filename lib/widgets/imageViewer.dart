import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:socialapp/utils/color.util.dart';

class ImageViewerWidget extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Border? border;
  final BoxFit? imageFit;
  const ImageViewerWidget({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.borderRadius,
    this.border,
    this.imageFit
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url!,
      imageBuilder: (context, imageProvider) => Container(
        width: this.width ?? 30,
        height: this.height ?? 30,
        decoration: BoxDecoration(
          borderRadius: this.borderRadius, //  BorderRadius.circular(40),
          border: this.border ?? Border.all(color: Colors.black38, width: 0.7),
          image: DecorationImage(
            fit: imageFit ?? BoxFit.cover,
            image: imageProvider
          )
        ),
      ),
      placeholder: (context, url) => ClipRRect(
        borderRadius: this.borderRadius ?? BorderRadius.circular(0),
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: this.width ?? 30,
          height: this.height ?? 30,
          decoration: BoxDecoration(
            borderRadius: this.borderRadius ?? BorderRadius.circular(0),
          ),
          child: LinearProgressIndicator(
            backgroundColor: Color(ColorUtil.getColorHexFromStr("#f4f4f4")),
            minHeight: this.height ?? 30,
            valueColor: new AlwaysStoppedAnimation<Color>(
              Color(ColorUtil.getColorHexFromStr("#ededed"))
            ),
          ),
        ),
      ),
      errorWidget: (context, url, error) => ClipRRect(
        borderRadius: this.borderRadius ?? BorderRadius.circular(0),
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: this.width ?? 30,
          height: this.height ?? 30,
          decoration: BoxDecoration(
            borderRadius: this.borderRadius ?? BorderRadius.circular(0),
          ),
          child: LinearProgressIndicator(
            backgroundColor: Color(ColorUtil.getColorHexFromStr("#f4f4f4")),
            minHeight: this.height ?? 30,
            valueColor: new AlwaysStoppedAnimation<Color>(
              Color(ColorUtil.getColorHexFromStr("#ededed"))
            ),
          ),
        ),
      )
    );
  }
}
