part of '../../yandex_js_maps.dart';

/// Represents a single suggestion result from Yandex Maps address autocomplete service.
///
/// Used in conjunction with [YandexJsMapController.suggest] to provide address suggestions
/// as the user types. Contains both display and raw values for each suggestion.
class SuggestResult {
  /// The formatted display name of the suggested address.
  ///
  /// This is the user-friendly representation that should be shown in suggestion lists.
  /// May include highlighting of matched parts of the address.
  final String? displayName;

  /// The complete address value that should be used when selected.
  ///
  /// This is the raw value that can be used for further geocoding or input completion.
  /// Typically more complete and standardized than what the user has typed.
  final String? value;

  /// Creates a suggestion result with display and raw values.
  ///
  /// - [displayName] The user-visible suggestion text
  /// - [value] The complete address value to use when selected
  const SuggestResult({
    this.displayName,
    this.value,
  });
}
