import 'package:bm_app/controllers/bottom_nav_controller.dart';
import 'package:bm_app/providers/auth_user_providers.dart';
import 'package:bm_app/ui/bulletinBoard/board_screen.dart';
import 'package:bm_app/ui/calendar/calendar_screen.dart';
import 'package:bm_app/ui/home/home_screen.dart';
import 'package:bm_app/ui/member_list/member_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

class NavScreen extends ConsumerWidget {
 const NavScreen({super.key,});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = ref.watch(authUserProvider);
    final index = ref.watch(navigatorStateProvider);

    return uid.when(
      data: (uid) {
        if(uid != null){
          return Scaffold(
            bottomNavigationBar: CupertinoTabBar(
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: index == 0 ? AppColor.brand : Colors.blue,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_month,
                    color: index == 1 ? AppColor.brand : Colors.blue,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.content_paste,
                    color: index == 1 ? AppColor.brand : Colors.blue,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.groups,
                    color: index == 2 ? AppColor.brand : Colors.blue,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.mail_outline,
                    color: index == 3 ? AppColor.brand : Colors.blue,
                  ),
                ),
              ],
              onTap: (value) => ref.read(navigatorStateProvider.notifier).onNavigationTap(value),
              currentIndex: index,
            ),
            body: PageView(
              controller: ref.watch(navigatorStateProvider.notifier).pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeScreen(uid: uid,),
                CalenderScreen(uid: uid),
                BoardScreen(uid: uid),
                MemberListScreen(uid: uid),
              ],
            ),
          );
        }else{
          return Container();
        }
      },
      error: (e, _) => Text('Error'),
      loading: () => CircularProgressIndicator(),
    );
  }
}
