part of '../../../yandex_js_maps.dart';

/// Configuration options for Yandex Map behavior and appearance.
///
/// These options control various aspects of map interaction,
/// viewport behavior, and display settings.
class MapOptions {
  /// Controls automatic viewport fitting behavior ('none', 'always', 'ifNull')
  final String? autoFitToViewport;

  /// Whether to avoid fractional zoom levels
  final bool? avoidFractionalZoom;

  /// Whether to allow exiting fullscreen mode with ESC key
  final bool? exitFullscreenByEsc;

  /// z-index for fullscreen mode
  final int? fullscreenZIndex;

  /// Whether map automatically gets focus on load
  final bool? mapAutoFocus;

  /// Maximum zoom difference for animations
  final int? maxAnimationZoomDifference;

  /// Maximum allowed zoom level
  final int? maxZoom;

  /// Minimum allowed zoom level
  final int? minZoom;

  /// Whether to use native browser fullscreen
  final bool? nativeFullscreen;

  /// Whether to restrict map to defined area
  final bool? restrictMapArea;

  /// Whether to suppress map loading block
  final bool? suppressMapOpenBlock;

  /// Whether to suppress obsolete browser notification
  final bool? suppressObsoleteBrowserNotifier;

  /// Whether to auto-switch map types
  final bool? yandexMapAutoSwitch;

  /// Whether to disable POI interactivity
  final bool? yandexMapDisablePoiInteractivity;

  /// Default map type ('map', 'satellite', 'hybrid')
  final String? yandexMapType;

  /// Creates map configuration options with default values
  const MapOptions({
    this.autoFitToViewport = 'ifNull',
    this.avoidFractionalZoom = true,
    this.exitFullscreenByEsc = true,
    this.fullscreenZIndex = 10000,
    this.mapAutoFocus = true,
    this.maxAnimationZoomDifference = 5,
    this.maxZoom = 23,
    this.minZoom = 0,
    this.nativeFullscreen = false,
    this.restrictMapArea = false,
    this.suppressMapOpenBlock = false,
    this.suppressObsoleteBrowserNotifier = false,
    this.yandexMapAutoSwitch = true,
    this.yandexMapDisablePoiInteractivity = false,
    this.yandexMapType = 'map',
  });

  /// Serializes options to JSON format
  Map<String, dynamic> toJson() {
    return {
      if (autoFitToViewport != null) 'autoFitToViewport': autoFitToViewport,
      if (avoidFractionalZoom != null)
        'avoidFractionalZoom': avoidFractionalZoom,
      if (exitFullscreenByEsc != null)
        'exitFullscreenByEsc': exitFullscreenByEsc,
      if (fullscreenZIndex != null) 'fullscreenZIndex': fullscreenZIndex,
      if (mapAutoFocus != null) 'mapAutoFocus': mapAutoFocus,
      if (maxAnimationZoomDifference != null)
        'maxAnimationZoomDifference': maxAnimationZoomDifference,
      if (maxZoom != null) 'maxZoom': maxZoom,
      if (minZoom != null) 'minZoom': minZoom,
      if (nativeFullscreen != null) 'nativeFullscreen': nativeFullscreen,
      if (restrictMapArea != null) 'restrictMapArea': restrictMapArea,
      if (suppressMapOpenBlock != null)
        'suppressMapOpenBlock': suppressMapOpenBlock,
      if (suppressObsoleteBrowserNotifier != null)
        'suppressObsoleteBrowserNotifier': suppressObsoleteBrowserNotifier,
      if (yandexMapAutoSwitch != null)
        'yandexMapAutoSwitch': yandexMapAutoSwitch,
      if (yandexMapDisablePoiInteractivity != null)
        'yandexMapDisablePoiInteractivity': yandexMapDisablePoiInteractivity,
      if (yandexMapType != null) 'yandexMapType': yandexMapType,
    };
  }
}
