part of '../../yandex_js_maps.dart';

/// JavaScript interop type for Yandex Maps suggest API results.
///
/// Represents a single suggestion result from the Yandex Maps suggest service,
/// containing both display and raw values for address suggestions.
@JS('JsSuggestResult')
extension type JsSuggestResult._(JSObject _) implements JSObject {
  /// Creates a JavaScript suggest result object.
  external JsSuggestResult();

  /// The formatted display name of the suggested address.
  ///
  /// This is the user-friendly representation that should be shown
  /// in suggestion lists.
  external String? get displayName;

  /// The complete address value that should be used when selected.
  ///
  /// This is the raw value that can be used for further geocoding
  /// or input completion.
  external String? get value;
}
