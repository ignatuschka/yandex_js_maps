part of '../../../yandex_js_maps.dart';

/// Contains content properties for placemark elements on Yandex Maps.
///
/// These properties define the textual content displayed in placemark elements,
/// including icons, hints, and balloon popups.
class PlacemarkProperties {
  /// HTML content displayed inside the placemark icon
  final String? iconContent;

  /// Caption text displayed near the placemark icon
  final String? iconCaption;

  /// Content displayed in the hint popup
  final String? hintContent;

  /// Full HTML content for the balloon popup (overrides header/body/footer)
  final String? balloonContent;

  /// HTML content for the balloon header section
  final String? balloonContentHeader;

  /// HTML content for the balloon body section
  final String? balloonContentBody;

  /// HTML content for the balloon footer section
  final String? balloonContentFooter;

  /// Creates placemark content properties
  const PlacemarkProperties({
    this.iconContent,
    this.iconCaption,
    this.hintContent,
    this.balloonContent,
    this.balloonContentHeader,
    this.balloonContentBody,
    this.balloonContentFooter,
  });

  /// Converts properties to JavaScript-compatible format for Yandex Maps API
  JSPlacemarkProperties toJs() => JSPlacemarkProperties(
        iconContent,
        iconCaption,
        hintContent,
        balloonContent,
        balloonContentHeader,
        balloonContentBody,
        balloonContentFooter,
      );

  /// Serializes properties to JSON format
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (iconContent != null) 'iconContent': iconContent,
      if (iconCaption != null) 'iconCaption': iconCaption,
      if (hintContent != null) 'hintContent': hintContent,
      if (balloonContent != null) 'balloonContent': balloonContent,
      if (balloonContentHeader != null) 'balloonContentHeader': balloonContentHeader,
      if (balloonContentBody != null) 'balloonContentBody': balloonContentBody,
      if (balloonContentFooter != null) 'balloonContentFooter': balloonContentFooter,
    };
  }
}
