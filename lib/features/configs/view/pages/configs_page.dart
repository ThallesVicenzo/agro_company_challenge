import 'package:agro_company_challenge/core/ui_overlay_color.dart';
import 'package:agro_company_challenge/features/configs/view/widgets/default_header/default_header.dart';
import 'package:flutter/material.dart';

import '../widgets/app_textfield.dart';

class ConfigsPage extends StatefulWidget {
  const ConfigsPage({super.key});

  @override
  State<ConfigsPage> createState() => _ConfigsPageState();
}

class _ConfigsPageState extends State<ConfigsPage> {
  @override
  Widget build(BuildContext context) {
    return UiOverlayColor(
      overlayColor: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            child: Column(
              children: [
                const DefaultHeader(title: 'Configurações'),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 27),
                      child: AppTextField(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: const Row(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
