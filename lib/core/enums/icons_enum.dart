import 'dart:io';

enum IconsEnum {
  vector('Vector.svg');

  const IconsEnum(this.name);

  final String name;

  String get defaultPath => 'assets/icons/';
  String get path => '$defaultPath$name';

  File get file => File(path);
}
