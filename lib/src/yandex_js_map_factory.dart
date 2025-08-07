// ignore_for_file: unused_field

part of '../yandex_js_maps.dart';

/// Factory class for initializing and configuring Yandex Maps JavaScript API.
/// Handles script loading and API setup for Flutter web applications.
class YandexJsMapFactory {
  static String? _apiKey;
  static String? _lang;
  static String? _suggestApiKey;

  /// Initializes the Yandex Maps JavaScript API with the provided credentials.
  ///
  /// This method:
  /// 1. Stores the API keys and language settings
  /// 2. Creates and injects the Yandex Maps script tag into the document head
  /// 3. Waits for the script to load and the API to be ready
  ///
  /// - [apiKey] The Yandex Maps JavaScript API key (required)
  /// - [lang] The language for the maps (default: 'ru_RU')
  /// - [suggestApiKey] Optional API key for suggest functionality
  ///
  /// Throws Exception if the script fails to load
  static Future<void> setMapApi(String apiKey,
      {String lang = 'ru_RU', String? suggestApiKey}) async {
    // Store configuration parameters
    _apiKey = apiKey;
    _lang = lang;
    _suggestApiKey = suggestApiKey;

    // Construct URL parameters
    final langPath = 'lang=$lang';
    final apiKeyPath = '&apikey=$apiKey';
    final suggestApiKeyPath =
        _suggestApiKey != null ? '&suggest_apikey=$_suggestApiKey' : '';

    // Skip if script is already loaded
    if (html.document.getElementById('yandex-map-script') != null) return;

    // Create script element pointing to Yandex Maps API
    final script = html.ScriptElement()
      ..id = 'yandex-map-script'
      ..type = 'text/javascript'
      ..src =
          'https://api-maps.yandex.ru/2.1/?$langPath$apiKeyPath$suggestApiKeyPath';

    // Setup completer to handle script loading
    final completer = Completer<void>();
    script.onLoad.listen((_) => completer.complete());
    script.onError.listen(
        (e) => completer.completeError('Failed to load Yandex Maps script'));

    // Append script to document head
    html.document.head!.append(script);

    // Wait for script to load
    await completer.future;

    // Wait for ymaps API to be ready
    final ymaps = js_util.getProperty(js_util.globalThis, 'ymaps');
    await js_util.promiseToFuture(js_util.callMethod(ymaps, 'ready', []));
  }
}
