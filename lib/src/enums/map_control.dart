part of '../../yandex_js_maps.dart';

/// Enumeration of available control elements that can be displayed on Yandex Map.
///
/// These controls provide interactive UI elements for map manipulation and functionality.
/// Used when configuring map options to show/hide specific controls.
enum MapControl {
  /// Control for zooming in/out of the map
  zoomControl,

  /// Control for switching between map types (map, satellite, hybrid)
  typeSelector,

  /// Control for toggling fullscreen mode
  fullscreenControl,

  /// Control for measuring distances on the map
  rulerControl,

  /// Control for accessing device geolocation
  geolocationControl,

  /// Control for searching locations/addresses
  searchControl,

  /// Button for initiating route planning
  routeButtonControl,

  /// Control for displaying traffic information
  trafficControl,

  /// Interface for creating and editing routes
  routeEditor,

  /// Panel for displaying and managing routes
  routePanelControl,
}
