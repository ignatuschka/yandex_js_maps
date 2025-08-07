part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing options for Yandex Maps suggest requests.
///
/// Configures the behavior of address suggestion queries.
@JS()
@anonymous
@staticInterop
class JSSuggestOptions {
  /// Creates JavaScript suggest options.
  ///
  /// - [boundedBy] Geographic bounds to prioritize results within
  /// - [provider] Suggestion provider service identifier
  /// - [results] Maximum number of suggestions to return
  external factory JSSuggestOptions({
    JSArray? boundedBy,
    String provider,
    int results,
  });
}

/// Extension providing property accessors for suggest options.
extension JSSuggestOptionsExt on JSSuggestOptions {
  /// Gets the geographic bounds for prioritizing results
  external JSArray? get boundedBy;

  /// Gets the suggestion provider service identifier
  external String get provider;

  /// Gets the maximum number of results to return
  external int get results;
}
