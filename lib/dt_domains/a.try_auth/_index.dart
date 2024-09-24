import 'dart:math';

import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.try_auth.prov.dart';
part 'b.try_auth.serv.dart';
part 'c.try_auth.repo.dart';
part 'd.try_auth.repo.mock.dart';

TryAuthProv get _pv => Prov.tryAuth.st;
TryAuthServ get _sv => Serv.tryAuth;
TryAuthRepo get _rp => Repo.tryAuth.st;
