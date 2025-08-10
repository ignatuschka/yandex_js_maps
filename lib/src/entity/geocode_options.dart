part of '../../yandex_js_maps.dart';

/// Configuration options for geocoding requests to Yandex Maps API.
///
/// Used to customize the behavior of [YandexJsMapController.geocode]
/// for both forward and reverse geocoding operations.
class GeocodeOptions {
  /// Geographic bounds to prioritize search results within.
  ///
  /// Typically two points defining a rectangular region: [southwest, northeast].
  /// When combined with [strictBounds], can restrict results exclusively to this area.
  final List<PointEntity>? boundedBy;

  /// Filters results to only include locations of the specified type.
  final String? kind;

  /// The geocoding provider service to use.
  ///
  /// Defaults to 'yandex#map' for standard geocoding. Alternative providers
  /// may offer different result sets or specialized handling.
  final String provider;

  /// Maximum number of results to return.
  ///
  /// Must be between 1 and 100. Defaults to 10.
  final int results;

  /// Preferred coordinate order for search results.
  ///
  /// Can specify 'latlong' or 'longlat' to control coordinate
  /// sequence in responses.
  final String? searchCoordOrder;

  /// Number of results to skip from the beginning.
  ///
  /// Useful for pagination through large result sets.
  final int skip;

  /// Whether to strictly limit results to the specified [boundedBy] area.
  ///
  /// When true, only returns results completely contained within the bounds.
  final bool strictBounds;

  /// Creates geocoding request options.
  ///
  /// - [boundedBy] Geographic area to prioritize results
  /// - [kind] Type of locations to search for
  /// - [provider] Geocoding service provider
  /// - [results] Maximum results to return (1-100)
  /// - [searchCoordOrder] Preferred coordinate order
  /// - [skip] Number of results to skip
  /// - [strictBounds] Whether to enforce strict bounds checking
  const GeocodeOptions({
    this.boundedBy,
    this.kind,
    this.provider = 'yandex#map',
    this.results = 10,
    this.searchCoordOrder,
    this.skip = 0,
    this.strictBounds = false,
  });

  /// Internal flag indicating JSON response format (always false for this implementation).
  bool get json => false;

  /// Converts the options to a JavaScript-compatible format.
  ///
  /// Used internally for interop with Yandex Maps JavaScript API.
  JSGeocodeOptions toJs() => JSGeocodeOptions(
        boundedBy: boundedBy?.map((e) => e.toJs()).toList().toJS,
        json: json,
        kind: kind,
        provider: provider,
        results: results,
        searchCoordOrder: searchCoordOrder,
        skip: skip,
        strictBounds: strictBounds,
      );
}
