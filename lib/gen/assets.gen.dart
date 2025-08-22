// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/base_cart.svg
  String get baseCart => 'assets/icons/base_cart.svg';

  /// File path: assets/icons/cart.svg
  String get cart => 'assets/icons/cart.svg';

  /// File path: assets/icons/menu.svg
  String get menu => 'assets/icons/menu.svg';

  /// File path: assets/icons/mubin_custom_logo.jpeg
  AssetGenImage get mubinCustomLogo =>
      const AssetGenImage('assets/icons/mubin_custom_logo.jpeg');

  /// File path: assets/icons/mubin_logo.png
  AssetGenImage get mubinLogo =>
      const AssetGenImage('assets/icons/mubin_logo.png');

  /// File path: assets/icons/mubin_logo_circale.png
  AssetGenImage get mubinLogoCircale =>
      const AssetGenImage('assets/icons/mubin_logo_circale.png');

  /// File path: assets/icons/native_android_splash.png
  AssetGenImage get nativeAndroidSplash =>
      const AssetGenImage('assets/icons/native_android_splash.png');

  /// File path: assets/icons/pdf.svg
  String get pdf => 'assets/icons/pdf.svg';

  /// File path: assets/icons/sticker_logo.png
  AssetGenImage get stickerLogo =>
      const AssetGenImage('assets/icons/sticker_logo.png');

  /// List of all assets
  List<dynamic> get values => [
        baseCart,
        cart,
        menu,
        mubinCustomLogo,
        mubinLogo,
        mubinLogoCircale,
        nativeAndroidSplash,
        pdf,
        stickerLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Rectangle 10.png
  AssetGenImage get rectangle10 =>
      const AssetGenImage('assets/images/Rectangle 10.png');

  /// File path: assets/images/Rectangle 13.png
  AssetGenImage get rectangle13 =>
      const AssetGenImage('assets/images/Rectangle 13.png');

  /// File path: assets/images/sign_in_background.png
  AssetGenImage get signInBackground =>
      const AssetGenImage('assets/images/sign_in_background.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [rectangle10, rectangle13, signInBackground];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
