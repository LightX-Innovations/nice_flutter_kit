import "package:nice_flutter_kit/nice_flutter_kit.dart";

abstract class NiceEnum implements FreezedClass {
  String get value;

  @override
  int get hashCode => value.hashCode;
}
