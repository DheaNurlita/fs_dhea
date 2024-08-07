import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:fs_dhea/dt_domains/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_add.data.dart';
part 'b.product_add.ctrl.dart';
part 'c.product_add.view.dart';
part 'widgets/a.product_add.appbar.dart';
part 'widgets/b.product_add.fab.dart';
part 'widgets/c.product_add.name.dart';
part 'widgets/d.product_add.description.dart';
part 'widgets/e.product_add.price.dart';
part 'widgets/e.product_add.submit.dart';
part 'widgets/e.product_add.quantity.dart';

ProductAddData get _dt => Data.productAdd.st;
ProductAddCtrl get _ct => Ctrl.productAdd;
