import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:emart_app/views/categoryscreen/categories_details.dart';
import 'package:emart_app/widgets_comman/backgroundwidget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisExtent: 200,mainAxisSpacing: 8,crossAxisSpacing: 8),
              itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(categoryImages[index],height: 120,width: 200,fit: BoxFit.cover,),
                10.heightBox,
                categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
              ],
            ).box.white.roundedFull.clip(Clip.antiAlias).outerShadowSm.make().onTap(() { 
              Get.to(()=> CategoryDetails(title: categoriesList[index]));
            });
              })
        ),
      )
    );
  }
}
