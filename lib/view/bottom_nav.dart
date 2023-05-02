import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottom_nav.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  final bottomnavController = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          bottomnavController.pages[bottomnavController.selecteIndex.value]),
      bottomNavigationBar: GetBuilder<BottomNavController>(
        builder: (controller) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomnavController.selecteIndex.value,
          backgroundColor: const Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 12,
          onTap: (value) {
            bottomnavController.navOntap(value);
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Todo',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
