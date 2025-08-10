part of '../../../yandex_js_maps.dart';

/// Contains content properties for polyline elements on Yandex Maps.
///
/// These properties define the textual content displayed when interacting with
/// polylines, including hints and balloon popups.
class PolylineProperties {
  /// Content displayed in the hint popup when hovering over the polyline
  final String? hintContent;

  /// Full HTML content for the balloon popup (overrides header/body/footer)
  final String? balloonContent;

  /// HTML content for the balloon header section
  final String? balloonContentHeader;

  /// HTML content for the balloon body section
  final String? balloonContentBody;

  /// HTML content for the balloon footer section
  final String? balloonContentFooter;

  /// Creates polyline content properties
  const PolylineProperties({
    this.hintContent,
    this.balloonContent,
    this.balloonContentHeader,
    this.balloonContentBody,
    this.balloonContentFooter,
  });

  /// Converts properties to JavaScript-compatible format for Yandex Maps API
  JSPolylineProperties toJs() => JSPolylineProperties(
        hintContent,
        balloonContent,
        balloonContentHeader,
        balloonContentBody,
        balloonContentFooter,
      );

  /// Serializes properties to JSON format
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (hintContent != null) 'hintContent': hintContent,
      if (balloonContent != null) 'balloonContent': balloonContent,
      if (balloonContentHeader != null) 'balloonContentHeader': balloonContentHeader,
      if (balloonContentBody != null) 'balloonContentBody': balloonContentBody,
      if (balloonContentFooter != null) 'balloonContentFooter': balloonContentFooter,
    };
  }
}
