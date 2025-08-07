part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing options for Yandex Maps geocoding requests.
///
/// Configures the behavior of both forward and reverse geocoding operations.
@JS()
@anonymous
@staticInterop
class JSGeocodeOptions {
  /// Creates JavaScript geocoding options.
  ///
  /// - [boundedBy] Geographic bounds to prioritize results
  /// - [json] Whether to request JSON response format
  /// - [kind] Type of location to search for (e.g., 'house', 'street')
  /// - [provider] Geocoding service provider
  /// - [results] Maximum number of results to return
  /// - [searchCoordOrder] Preferred coordinate order in results
  /// - [skip] Number of results to skip (for pagination)
  /// - [strictBounds] Whether to strictly enforce bounds
  external factory JSGeocodeOptions({
    JSArray? boundedBy,
    bool json,
    String? kind,
    String provider,
    int results,
    String? searchCoordOrder,
    int skip,
    bool strictBounds,
  });
}

/// Extension providing property accessors for geocoding options.
extension JSGeocodeOptionsExt on JSGeocodeOptions {
  /// Gets the geographic bounds for prioritizing results
  external JSArray? get boundedBy;

  /// Gets whether to request JSON response format
  external bool get json;

  /// Gets the type of location to search for
  external String? get kind;

  /// Gets the geocoding service provider
  external String get provider;

  /// Gets the maximum number of results to return
  external int get results;

  /// Gets the preferred coordinate order in results
  external String? get searchCoordOrder;

  /// Gets the number of results to skip
  external int get skip;

  /// Gets whether to strictly enforce bounds
  external bool get strictBounds;
}
