part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing content properties for polylines.
///
/// Contains textual content that appears when interacting with polylines.
@JS()
@staticInterop
class JSPolylineProperties {
  /// Creates JavaScript polyline content properties.
  ///
  /// - [hintContent] Content for hover tooltips
  /// - [balloonContent] Full balloon HTML content
  /// - [balloonContentHeader] Balloon header section HTML
  /// - [balloonContentBody] Balloon main content HTML
  /// - [balloonContentFooter] Balloon footer section HTML
  external factory JSPolylineProperties(
    String? hintContent,
    String? balloonContent,
    String? balloonContentHeader,
    String? balloonContentBody,
    String? balloonContentFooter,
  );
}

/// Extension providing property accessors for polyline content.
extension JSPolylinePropertiesExt on JSPolylineProperties {
  /// Gets the hint popup content
  external String? get hintContent;

  /// Gets the full balloon HTML content
  external String? get balloonContent;

  /// Gets the balloon header HTML content
  external String? get balloonContentHeader;

  /// Gets the balloon body HTML content
  external String? get balloonContentBody;

  /// Gets the balloon footer HTML content
  external String? get balloonContentFooter;
}
