part of '../../yandex_js_maps.dart';

/// The primary widget for embedding Yandex Maps in a Flutter Web application.
///
/// This widget creates an interactive map instance and provides a controller
/// for programmatic map manipulation. It handles the integration between
/// Flutter and Yandex Maps JavaScript API.
class YandexJsMap extends StatefulWidget {
  /// Creates a Yandex Maps widget instance.
  ///
  /// [onMapCreated] callback is required and provides the controller instance.
  /// Other parameters provide initial configuration for the map.
  const YandexJsMap({
    super.key,
    required this.onMapCreated,
    this.mapState = const MapState(),
    this.mapOptions = const MapOptions(),
    this.placemarks = const [],
    this.polygons = const [],
    this.polylines = const [],
  });

  /// The initial view state of the map including:
  /// - [center] Initial geographic coordinates
  /// - [zoom] Initial zoom level
  /// - [bounds] Optional bounding box to fit
  final MapState mapState;

  /// Configuration options for map behavior:
  /// - [mapType] Type of map (street, satellite, hybrid)
  /// - [scrollZoom] Whether scroll zoom is enabled
  /// - [drag] Whether map dragging is enabled
  final MapOptions mapOptions;

  /// List of placemarks to display when the map initializes
  final List<PlacemarkEntity> placemarks;

  /// List of polygons to display when the map initializes
  final List<PolygonEntity> polygons;

  /// List of polylines to display when the map initializes
  final List<PolylineEntity> polylines;

  /// Callback that provides the [YandexJsMapController] instance
  /// when the map is fully initialized and ready for interaction
  final void Function(YandexJsMapController controller) onMapCreated;

  @override
  State<YandexJsMap> createState() => _YandexJsMapState();
}

/// The state class for [YandexJsMap] widget.
///
/// Handles:
/// - Map element initialization
/// - Platform view registration
/// - Controller creation
class _YandexJsMapState extends State<YandexJsMap> {
  /// Controller instance for map interaction
  late final YandexJsMapController controller;

  /// Unique identifier for this map instance
  final mapId = const Uuid().v4();

  @override
  void initState() {
    super.initState();

    // Register a platform view for embedding the Yandex Map HTML element
    ui_web.platformViewRegistry.registerViewFactory(
      'yandex-map-html-$mapId',
      (int viewId) {
        // Create container div for the map
        final divId = 'yandex-map-div-$mapId';
        final element = html.DivElement()
          ..id = divId
          ..style.width = '100%'
          ..style.height = '100%';

        // Convert Dart objects to JavaScript-compatible formats
        final jsState = js.JsObject.jsify(widget.mapState.toJson());
        final jsOptions = js.JsObject.jsify(widget.mapOptions.toJson());
        final jsPlacemarks = js.JsArray.from(widget.placemarks.map((e) => js.JsObject.jsify(e.toJson())));
        final jsPolygons = js.JsArray.from(widget.polygons.map((e) => js.JsObject.jsify(e.toJson())));
        final jsPolylines = js.JsArray.from(widget.polylines.map((e) => js.JsObject.jsify(e.toJson())));

        // Initialize the Yandex Map through JavaScript interop
        js.context.callMethod('initYandexMap', [divId, jsState, jsOptions, jsPlacemarks, jsPolygons, jsPolylines]);

        // Create controller instance
        controller = YandexJsMapController._init(divId, widget.placemarks, widget.polygons, widget.polylines);

        return element;
      },
    );
  }

  @override
  void dispose() {
    final placemarksIds = js.JsArray.from(controller.placemarks.map((e) => e.id));
    final polygonsIds = js.JsArray.from(controller.polygons.map((e) => e.id));
    final polylinesIds = js.JsArray.from(controller.polylines.map((e) => e.id));
    js.context.callMethod('destroyYandexMap', ['yandex-map-div-$mapId', placemarksIds, polygonsIds, polylinesIds]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: HtmlElementView(
        /// The viewType must match the registered platform view ID
        viewType: 'yandex-map-html-$mapId',

        /// Notify parent widget when platform view is created
        onPlatformViewCreated: (_) => widget.onMapCreated(controller),
      ),
    );
  }
}
