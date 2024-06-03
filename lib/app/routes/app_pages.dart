import 'package:get/get.dart';
import 'package:my_tsel/app/modules/LoginUser/views/login_user_view.dart';

import '../modules/KPInternet/bindings/k_p_internet_binding.dart';
import '../modules/KPInternet/views/k_p_internet_view.dart';
import '../modules/KPTelpon/bindings/k_p_telpon_binding.dart';
import '../modules/KPTelpon/views/k_p_telpon_view.dart';
import '../modules/LoginUser/bindings/login_user_binding.dart';

import '../modules/akun/bindings/akun_binding.dart';
import '../modules/akun/views/akun_view.dart';
import '../modules/help/bindings/help_binding.dart';
import '../modules/help/views/help_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/inbox/bindings/inbox_binding.dart';
import '../modules/inbox/views/inbox_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => const HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.INBOX,
      page: () => const InboxView(),
      binding: InboxBinding(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => const AkunView(),
      binding: AkunBinding(),
    ),
    GetPage(
      name: _Paths.K_P_INTERNET,
      page: () => const KPInternetView(),
      binding: KPInternetBinding(),
    ),
    GetPage(
      name: _Paths.K_P_TELPON,
      page: () => const KPTelponView(),
      binding: KPTelponBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_USER,
      page: () => const LoginUserView(),
      binding: LoginUserBinding(),
    ),
  ];
}
