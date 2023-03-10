// lib/env/env.dart
// ignore_for_file: constant_identifier_names

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'MINIFLUX_KEY')
  static const MINIFLUX_KEY = _Env.MINIFLUX_KEY;
}
