part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing content properties for polygons.
///
/// Contains textual content that appears when interacting with polygon shapes.
@JS()
@staticInterop
class JSPolygonProperties {
  /// Creates JavaScript polygon content properties.
  ///
  /// - [hintContent] Content for hover tooltips
  /// - [balloonContent] Full balloon HTML content (overrides sections)
  /// - [balloonContentHeader] Balloon header section HTML
  /// - [balloonContentBody] Balloon main content HTML
  /// - [balloonContentFooter] Balloon footer section HTML
  external factory JSPolygonProperties(
    String? hintContent,
    String? balloonContent,
    String? balloonContentHeader,
    String? balloonContentBody,
    String? balloonContentFooter,
  );
}

/// Extension providing property accessors for polygon content.
extension JSPolygonPropertiesExt on JSPolygonProperties {
  /// Gets the hint popup content shown on hover
  external String? get hintContent;

  /// Gets the complete balloon HTML content
  external String? get balloonContent;

  /// Gets the balloon header section HTML
  external String? get balloonContentHeader;

  /// Gets the balloon body/main content HTML
  external String? get balloonContentBody;

  /// Gets the balloon footer section HTML
  external String? get balloonContentFooter;
}
