import 'package:flutter/widgets.dart';
import 'package:portfolio/core/presentation/router/pages/color_page.dart';
import 'package:portfolio/core/presentation/router/pages/home_page.dart';
import 'package:portfolio/core/presentation/router/pages/shape_page.dart';
import 'package:portfolio/core/presentation/ui/model/shape_border_type.dart';

class MyAppRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  MyAppRouterDelegate() : _navigatorKey = GlobalKey<NavigatorState>();

  final GlobalKey<NavigatorState> _navigatorKey;

  String? _selectedColorCode;
  String? get selectedColorCode => _selectedColorCode;
  set selectedColorCode(String? value) {
    _selectedColorCode = value;
    notifyListeners();
  }

  ShapeBorderType? _selectedShapeBorderType;
  ShapeBorderType? get selectedShapeBorderType => _selectedShapeBorderType;
  set selectedShapeBorderType(ShapeBorderType? value) {
    _selectedShapeBorderType = value;
    notifyListeners();
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        HomePage(onColorTap: (colorCode) {
          selectedColorCode = colorCode;
        }),
        if (selectedColorCode != null)
          ColorPage(
            onShapeTap: (shape) {
              selectedShapeBorderType = shape;
            },
            selectedColorCode: selectedColorCode!,
          ),
        if (selectedColorCode != null && selectedShapeBorderType != null)
          ShapePage(
            colorCode: selectedColorCode!,
            shapeBorderType: selectedShapeBorderType!,
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        if (selectedShapeBorderType == null) selectedColorCode = null;
        selectedShapeBorderType = null;
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) async {}
}
