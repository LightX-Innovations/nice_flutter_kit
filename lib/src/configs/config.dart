import "package:nice_flutter_kit/nice_flutter_kit.dart";
import "package:nice_flutter_kit/src/configs/data-filter.config.dart";

class NiceConfig {
  static NiceApiConfig? defaultApiConfig;
  @Deprecated(
    "This config will be removed in the next major version. Use NiceSerializationConfig instead.",
  )
  static NiceDataFilterConfig? dataFilterConfig;
  @Deprecated(
    "This config will be removed in the next major version. Use NiceOnboardingConfiguration instead.",
  )
  static NiceOnboardingGlobalConfig? onboardingConfig;
  static NiceBaseCubitConfig? baseCubitConfig;
  static NiceLocalizationsConfig localizationsConfig =
      const NiceLocalizationsConfig();
  static NiceSerializationConfig serializationConfig =
      const NiceSerializationConfig();

  const NiceConfig._();

  static Future<void> setup({
    NiceApiConfig? defaultApiConfig,
    NiceDataFilterConfig? dataFilterConfig,
    @Deprecated(
      "This config will be removed in the next major version. Use NiceOnboardingConfiguration instead.",
    )
    NiceOnboardingGlobalConfig? onboardingConfig,
    NiceBaseCubitConfig? baseCubitConfig,
    NiceLocalizationsConfig? localizationsConfig,
    NiceSerializationConfig? serializationConfig,
  }) async {
    NiceConfig.defaultApiConfig = defaultApiConfig;
    // ignore: deprecated_member_use_from_same_package
    NiceConfig.dataFilterConfig = dataFilterConfig;
    // ignore: deprecated_member_use_from_same_package
    NiceConfig.onboardingConfig = onboardingConfig;
    NiceConfig.baseCubitConfig = baseCubitConfig ?? NiceBaseCubitConfig();
    NiceConfig.serializationConfig =
        serializationConfig ?? const NiceSerializationConfig();

    if (localizationsConfig != null) {
      NiceConfig.localizationsConfig = localizationsConfig;
    }
  }
}
