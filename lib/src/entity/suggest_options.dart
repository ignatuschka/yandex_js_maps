part of '../../yandex_js_maps.dart';

/// Configuration options for address suggestion requests.
///
/// Used to customize the behavior of the Yandex Maps suggest API
/// when calling [YandexJsMapController.suggest].
class SuggestOptions {
  /// Geographic bounds to prioritize suggestions within.
  ///
  /// When provided, the suggest service will favor results within
  /// the specified bounding area. Typically two points defining
  /// a rectangular region: [southwest, northeast].
  final List<PointEntity>? boundedBy;

  /// The suggestion provider service to use.
  ///
  /// Defaults to 'yandex#search' which provides comprehensive address suggestions.
  /// Other providers may be available depending on Yandex Maps API configuration.
  final String provider;

  /// Maximum number of suggestions to return.
  ///
  /// Must be between 1 and 100. Defaults to 10.
  final int results;

  /// Creates suggestion request options.
  ///
  /// - [boundedBy] Optional geographic bounds to prioritize
  /// - [provider] Suggestion provider service identifier
  /// - [results] Maximum number of results to return (1-100)
  const SuggestOptions({
    this.boundedBy,
    this.provider = 'yandex#search',
    this.results = 10,
  });

  /// Converts the options to a JavaScript-compatible format.
  ///
  /// Used internally for interop with Yandex Maps JavaScript API.
  JSSuggestOptions toJs() => JSSuggestOptions(
        boundedBy: boundedBy?.map((e) => e.toJs()).toList().toJS,
        provider: provider,
        results: results,
      );
}
