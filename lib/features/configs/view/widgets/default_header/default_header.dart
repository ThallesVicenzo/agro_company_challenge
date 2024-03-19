import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget {
  final String title;
  final String? subTitle;
  final void Function()? onLeadingPressed;
  final Color? color;
  final Color? contentColor;
  final bool isBackButtonVisible;
  const DefaultHeader({
    super.key,
    required this.title,
    this.color,
    this.onLeadingPressed,
    this.contentColor,
    this.subTitle,
    this.isBackButtonVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            label: 'botão voltar',
            enabled: true,
            container: true,
            child: Visibility(
              visible: isBackButtonVisible,
              child: IconButton(
                alignment: Alignment.center,
                splashColor: Colors.transparent,
                splashRadius: 2,
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                onPressed: () {
                  if (onLeadingPressed == null && Navigator.canPop(context)) {
                    Navigator.of(context).pop();
                  } else {
                    onLeadingPressed?.call();
                  }
                },
                icon: const ExcludeSemantics(
                  child: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
