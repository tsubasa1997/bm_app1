import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigatorStateProvider =
StateNotifierProvider.autoDispose<BottomNavStateNotifier, int>(
      (ref) => BottomNavStateNotifier(),
);

class BottomNavStateNotifier extends StateNotifier<int> {
  BottomNavStateNotifier() : super(0) {
    _pageController = PageController();
  }

  late final PageController _pageController;

  PageController get pageController => _pageController;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onNavigationTap(int index) {
    state = index;
    _pageController.jumpToPage(index);
  }

}