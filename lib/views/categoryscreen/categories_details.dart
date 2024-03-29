import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/categoryscreen/item_details.dart';
import 'package:emart_app/widgets_comman/backgroundwidget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clothes"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .size(120, 60)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make())),
            ),
            20.heightBox,
            Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP1,
                            width: 200,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          "Laptop 4Gb/64Gb"
                              .text
                              .fontFamily(semibold)
                              .color(lightGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make(),
                        ],
                      )
                          .box
                          .white
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .outerShadowSm
                          .padding(EdgeInsets.all(12))
                          .make().onTap(() { Get.to(()=>ItemDetails(title: "DummyItem"));});
                    }))
          ],
        ),
      ),
    ));
  }
}
