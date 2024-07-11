abstract class FreezedClass<T> {
  T get copyWith;
  Map<String, dynamic> toJson();
  int get hashCode;
}
