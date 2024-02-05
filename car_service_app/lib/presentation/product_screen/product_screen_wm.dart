import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'product_screen_model.dart';
import 'product_screen_widget.dart';

abstract interface class IProductScreenWidgetModel implements IWidgetModel {
}

ProductScreenWidgetModel defaultProductScreenWidgetModelFactory(BuildContext context) {
  return ProductScreenWidgetModel(ProductScreenModel());
}

// TODO: cover with documentation
/// Default widget model for ProductScreenWidget
class ProductScreenWidgetModel extends WidgetModel<ProductScreenWidget, ProductScreenModel>
    implements IProductScreenWidgetModel {

  ProductScreenWidgetModel(super.model);
}
