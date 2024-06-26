import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/ui/views/chat/chat_view.dart';
import 'package:car_meta/ui/views/favourit/favourit_view.dart';
import 'package:car_meta/ui/views/home/home_view.dart';
import 'package:car_meta/ui/views/post/post_view.dart';
import 'package:car_meta/ui/views/setting/setting_view.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LandingScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  AuthModel? get userData => _authService.userData;

  navigateToHelpSupport() {
    _navigationService.navigateToHelpSupportView();
  }

  navigateToAppointment() {
    _navigationService.navigateToAppointmentDetailView();
  }

  navigateToOrders() {
    _navigationService.navigateToOrderDetailView();
  }

  navigateToProfile() {
    _navigationService.navigateToMyprofileView();
  }

  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int page = 0;
  List<Widget> tabsList = <Widget>[
    const HomeView(),
    const ChatView(),
    const PostView(),
    const FavouritView(),
    const SettingView(),
  ];
  setTab(i) {
    page = i;
    notifyListeners();
  }
}
