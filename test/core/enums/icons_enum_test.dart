import 'dart:developer';

import 'package:agro_company_challenge/core/enums/icons_enum.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('icons enum ...', () {
    test('... should have a path', () {
      const icons = IconsEnum.values;

      for (final icon in icons) {
        expect(
          icon.file.existsSync(),
          true,
          reason: 'Icon ${icon.name} not found in path ${icon.path}',
        );
      }
    });

    test('Not should have equal paths', () {
      const icons = IconsEnum.values;
      int iconsLength = icons.length;
      final expectedIconsList = icons.map((e) => e.path).toSet().toList();
      List duplicateIcons = [];
      if (iconsLength != expectedIconsList.length) {
        duplicateIcons = expectedIconsList
            .where((icon) =>
                icons.where((element) => element.path == icon).length > 1)
            .toList();
        log('Duplicate icons: $duplicateIcons');
        debugPrint('Duplicate icons: $duplicateIcons');
      }
      expect(iconsLength, expectedIconsList.length,
          reason: 'Duplicate Path $duplicateIcons');
    });
  });
}
