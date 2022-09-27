import 'package:alex_julica_ui/pages/dasborad/controller/dashbordcontroller.dart';
import 'package:alex_julica_ui/pages/dasborad/view/filter.dart';
import 'package:alex_julica_ui/pages/dasborad/view/market.dart';
import 'package:alex_julica_ui/pages/dasborad/view/pie.dart';
import 'package:alex_julica_ui/pages/dasborad/view/profile.dart';
import 'package:alex_julica_ui/pages/dasborad/view/subdasbord.dart';
import 'package:alex_julica_ui/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

final oCcy = new NumberFormat("#,##0.00", "en_US");

class Dashbroad extends StatelessWidget {
  Dashbroad({Key? key}) : super(key: key);
  final _currentIndex = 0;
  DashbordController controller = Get.put(DashbordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<DashbordController>(
          builder: (controller) {
            return IndexedStack(index: controller.tabIndex, children: const [
              HomePage(),
              PiePage(),
              FilterPage(),
              Market(),
              ProfilePage()
            ]);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: klightgrey,
          currentIndex: controller.tabIndex,
          onTap: controller.IndexChange,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kdarkBlue,
          iconSize: 30,
          items: [
            bottomNavigationBarItem(iconu: CupertinoIcons.home),
            bottomNavigationBarItem(iconu: CupertinoIcons.chart_pie),
            bottomNavigationBarItem(iconu: CupertinoIcons.home),
            bottomNavigationBarItem(iconu: CupertinoIcons.chart_pie),
            bottomNavigationBarItem(iconu: CupertinoIcons.home),
          ],
        ));
  }
}
bottomNavigationBarItem({required IconData iconu}) {
  return BottomNavigationBarItem(icon: Icon(iconu), label: '');
}
