import 'package:flutter/cupertino.dart';
import 'package:store_app1/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/box_shadow.dart';
import 'package:store_app1/models/product.dart';
import 'package:store_app1/screens/details_screen.dart';
import 'package:store_app1/widgets/product_cart.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Column(
          children: [
            SizedBox(height: KDefaultPadding/2,),
            Expanded(
              child : Stack(
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 70,),
                    decoration: BoxDecoration(
                      color: KBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context,index)=>ProductCard(
                      itemIndex: index,
                      product:products[index] ,
                      press: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> DetailsScreen(
                                  product: products[index],
                                ),
                            ),
                        );
                      },
                    ),
                  )
               ],
              ),
            ),
          ],
        ),
    );
  }
}



