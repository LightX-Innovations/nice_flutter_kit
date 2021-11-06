import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nice_flutter_kit/nice_flutter_kit.dart';

class NiceOnboardingPermissionPage extends StatelessWidget {
  final NiceOnboardingPermissionConfiguration configuration;
  final VoidCallback onNext;

  const NiceOnboardingPermissionPage({
    required this.configuration,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: _buildImage(configuration.imageUrl),
              ),
            ),
            configuration.title,
            const SizedBox(height: 20),
            configuration.paragraph,
            const SizedBox(height: 20),
            NiceButton(
              displayText: configuration.activate,
              padding: EdgeInsets.zero,
              onPressed: _activate,
              themeColors: Theme.of(context).buttonTheme.colorScheme?.primary,
            ),
            const SizedBox(height: 20),
            NiceButton(
              displayText: configuration.activateLater,
              padding: EdgeInsets.zero,
              onPressed: onNext,
              themeColors: Theme.of(context).backgroundColor,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    final ext = extension(imageUrl);
    switch (ext) {
      case ".svg":
        return SvgPicture.asset(imageUrl, width: 196);
      default:
        return Image.asset(configuration.imageUrl, width: 196);
    }
  }

  // TODO: Add loading when requesting the permission.
  Future<void> _activate() async {
    await NicePermissionUtils.requestPermission(configuration.type);
    onNext();
  }
}
