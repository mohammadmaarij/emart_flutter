import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/home.dart';
import 'package:emart_app/widgets_comman/applogo.dart';
import 'package:emart_app/widgets_comman/backgroundwidget.dart';
import 'package:emart_app/widgets_comman/customtextfield.dart';
import 'package:emart_app/widgets_comman/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogowidget(),
              10.heightBox,
              "log in to $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(email, emailHint),
                  customTextField(password, passwordHint),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(/////////////////Move to login
                        onPressed: () {
                          Get.to(Home());
                        }, child: forgetPassword.text.make()),
                  ),
                  5.heightBox,
                  //  ourButton().box.width(context.screenWidth-50).make(),
                  ourButton(() {}, whiteColor, redColor, login)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  createNewAccount.text.color(Colors.black).make(),
                  5.heightBox,
                  ourButton(() {}, lightGolden, redColor, signup)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
              10.heightBox,
              loginwith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ), // Image.asset
                          ), // CircleAvatar
                        )), // Padding // List.generate
              ), // Row
            ],
          ),
        )));
  }
}
//////////////32:30
