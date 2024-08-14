import 'package:flutter/material.dart';
import 'package:fs_dhea/dt_domains/_models/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_edit.data.dart';
part 'b.product_edit.ctrl.dart';
part 'c.product_edit.view.dart';
part 'widgets/a.product_edit.appbar.dart';
part 'widgets/b.product_edit.fab.dart';
part 'widgets/c.product_edit.name.dart';
part 'widgets/d.product_edit.description.dart';
part 'widgets/e.product_edit.price.dart';
part 'widgets/e.product_edit.quantity.dart';
part 'widgets/e.product_add.submit.dart';

ProductEditData get _dt => Data.productEdit.st;
// ignore: unused_element
ProductEditCtrl get _ct => Ctrl.productEdit;
