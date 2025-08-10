## 1.0.1

### Improvements
- Added proper resource cleanup in `dispose()` method
- Improved memory management by destroying map objects
- Updated code formatting rules
- Enhanced documentation

### Changes
- Added strict analysis rules in `analysis_options.yaml`
- Updated README.md with additional usage details
- Changed code formatting command to use 120 chars line length
- Added proper map disposal in `YandexJsMap` widget
- Implemented `destroyYandexMap` function in JS interop

### Fixed
- Potential memory leaks by properly cleaning up:
  - Map instances
  - Placemarks
  - Polygons
  - Polylines

## 1.0.0

- Initial release 🎉
- Full support for Yandex Maps via Flutter Web
- Features:
  - Embed interactive maps
  - Add/Remove/Update placemarks, polygons, and polylines
  - Camera control (move, zoom, bounds)
  - Geocoding and suggest API integration
  - JS interop with custom controllers