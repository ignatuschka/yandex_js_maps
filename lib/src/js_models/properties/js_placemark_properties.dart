part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing content properties for placemarks.
///
/// Contains all textual content that appears in placemark elements and popups.
@JS()
@staticInterop
class JSPlacemarkProperties {
  /// Creates JavaScript placemark content properties.
  ///
  /// - [iconContent] HTML content displayed inside the placemark icon
  /// - [iconCaption] Text caption displayed near the placemark
  /// - [hintContent] Content displayed in hover tooltips
  /// - [balloonContent] Full balloon HTML content (overrides sections)
  /// - [balloonContentHeader] Balloon header section HTML
  /// - [balloonContentBody] Balloon main content HTML
  /// - [balloonContentFooter] Balloon footer section HTML
  external factory JSPlacemarkProperties(
    String? iconContent,
    String? iconCaption,
    String? hintContent,
    String? balloonContent,
    String? balloonContentHeader,
    String? balloonContentBody,
    String? balloonContentFooter,
  );
}

/// Extension providing property accessors for placemark content.
extension JSPlacemarkPropertiesExt on JSPlacemarkProperties {
  /// Gets the HTML content displayed inside the placemark icon
  external String? get iconContent;

  /// Gets the text caption displayed near the placemark
  external String? get iconCaption;

  /// Gets the content displayed in hover tooltips
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
