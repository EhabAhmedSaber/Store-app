import 'package:flutter/material.dart';
import 'package:store_app1/constant.dart';
import 'package:store_app1/models/product.dart';

import '../product_image.dart';
import 'color_dot.dart';
class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.product}) : super(key: key);
   final Product product;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
          decoration: BoxDecoration(
            color: KBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(child:
            ProductImage(size:size,
                image:product.image,
            )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ColorDot(
                   fillColor: KTextLightColor,
                   isSelected: true,
                 ),
                 ColorDot(
                   fillColor: Colors.blue,
                   isSelected: false,
                 ),
                 ColorDot(
                   fillColor: Colors.red,
                   isSelected: false,
                 ),
               ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: KDefaultPadding/2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر: \$${product.price}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                  color: KSecondaryColor,
                ),
              ),
              SizedBox(height: KDefaultPadding,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: KDefaultPadding/2),
          padding: EdgeInsets.symmetric(
            horizontal: KDefaultPadding*1.5,
            vertical: KDefaultPadding/2,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
      ],
    );
  }
}




