part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const antrean = _Paths.antrean;
  static const call = _Paths.call;
}

abstract class _Paths {
  _Paths._();
  static const home = '/';
  static const antrean = '/antrean';
  static const call = '/call';
}