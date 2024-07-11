abstract class NiceEnum extends Object {
  String get value;

  @override
  int get hashCode => value.hashCode;
}
