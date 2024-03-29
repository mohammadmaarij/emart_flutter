import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controllers/home_controller.dart';
import 'package:emart_app/views/cartscreen/cartscreen.dart';
import 'package:emart_app/views/categoryscreen/categoryscreen.dart';
import 'package:emart_app/views/homescreen/home_screen.dart';
import 'package:emart_app/views/profilescreen/profilescreen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeController());
    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: 'Home')
    ];

    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentnavindex.value))),
        ],
      ),
        bottomNavigationBar: Obx(
          ()=> BottomNavigationBar(
            currentIndex: controller.currentnavindex.value,
              selectedItemColor: redColor,
              selectedLabelStyle: TextStyle(fontFamily: semibold),
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              items: navBarItem,
          onTap: (value){
              controller.currentnavindex.value=value;
          },
          ),

        ),

    );
  }
}
