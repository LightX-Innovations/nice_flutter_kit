import "package:nice_flutter_kit/nice_flutter_kit.dart";

class NiceVoid implements NiceDto {
  const NiceVoid();

  @override
  NiceVoid get copyWith => const NiceVoid();

  @override
  Map<String, dynamic> toJson() => const {};
}
