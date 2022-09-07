import 'package:flutter/material.dart';
import 'package:store_app1/constant.dart';
import 'package:store_app1/models/product.dart';
import 'package:store_app1/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: KBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: KDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: KPrimaryColor,
        ),
        onPressed: ()
        {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
