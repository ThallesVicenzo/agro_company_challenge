import 'dart:io';

enum IconsEnum {
  vector('Vector.svg');

  const IconsEnum(this.name);

  final String name;

  String get _defaultPath => 'assets/icons/';
  String get path => '$_defaultPath$name';

  File get file => File(path);
}
