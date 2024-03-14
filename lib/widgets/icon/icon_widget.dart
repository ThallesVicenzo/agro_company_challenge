import 'package:agro_company_challenge/core/enums/icons_enum.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconsEnum icon;
  final Size size;
  final BoxFit fit;
  final Alignment alignment;
  final Color? color;
  final Color? backgroundColor;
  final String? package;
  final VoidCallback? onTap;
  final BorderRadius? radius;
  final String? customPath;
  final Size? backgroundSize;
  const IconWidget({
    super.key,
    required this.icon,
    this.onTap,
    this.size = const Size(24, 24),
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.color = Colors.black,
    this.package = 'design_system',
    this.customPath,
    this.radius,
    this.backgroundColor,
    this.backgroundSize,
  });

  String get path => customPath ?? icon.path;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 1,
      splashColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: radius ?? BorderRadius.circular(4),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          constraints: BoxConstraints(
            minHeight: size.height,
            minWidth: size.width,
            maxHeight: backgroundSize?.height ?? size.height,
            maxWidth: backgroundSize?.width ?? size.width,
          ),
          child: Center(
            child: SvgPicture.asset(
              path,
              semanticsLabel: icon.name,
              width: size.width,
              height: size.height,
              fit: fit,
              alignment: alignment,
              color: color,
              package: package,
            ),
          ),
        ),
      ),
    );
  }

  factory IconWidget.byPath({
    required String path,
    Size size = const Size(24, 24),
    BoxFit fit = BoxFit.contain,
    Alignment alignment = Alignment.center,
    Color? color,
    VoidCallback? onTap,
    Color? backgroundColor,
    final Size? backgroundSize,
  }) {
    return IconWidget(
      icon: IconsEnum.vector,
      customPath: path,
      size: size,
      fit: fit,
      alignment: alignment,
      color: color,
      onTap: onTap,
      backgroundColor: backgroundColor,
      backgroundSize: backgroundSize,
    );
  }
}
