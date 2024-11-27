part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const antrean = _Paths.antrean;
  static const call = _Paths.call;
  static const login = _Paths.login;
  static const dashboard = _Paths.dashboard;
  static const main = _Paths.main;
  static const bahasa = _Paths.bahasa;
}

abstract class _Paths {
  _Paths._();
  static const home = '/';
  static const antrean = '/antrean';
  static const call = '/call';
  static const login = '/login';
  static const dashboard = '/dashboard';
  static const main = '/main';
  static const bahasa = '/main/bahasa';
}
