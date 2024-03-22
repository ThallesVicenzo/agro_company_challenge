// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class AtfImageWidget extends StatelessWidget {
//   final AtfImage image;
//   final Size size;
//   final BoxFit fit;
//   final Alignment alignment;
//   final Color? color;
//   final String? package;
//   const AtfImageWidget({
//     super.key,
//     required this.image,
//     this.size = const Size(24, 24),
//     this.fit = BoxFit.contain,
//     this.alignment = Alignment.center,
//     this.color,
//     this.package = 'design_system',
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       image.path,
//       semanticsLabel: image.name,
//       width: size.width,
//       height: size.height,
//       fit: fit,
//       alignment: alignment,
//       color: color,
//       package: package,
//     );
//   }
// }
