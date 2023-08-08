import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/drawer.dart';
import 'app_styles.dart';
import 'size_config.dart';

class Cart extends StatelessWidget {
   const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
          // backgroundColor Colors.transparent,
      child: Scaffold(
        // drawer: const AppDrawer(),
        drawer:const AppDrawer() ,
          extendBodyBehindAppBar: true,

        backgroundColor: Colors.white,
        appBar: AppBar(
                iconTheme:  const IconThemeData(color: Colors.orange),

          // actions: [Icon(Icons.shopping_cart,size:30,color:kBlack,),],
          backgroundColor:kWhite,
          elevation: 0,
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cart',  style: kSourceSansProBold.copyWith(
                                      color: kOrange,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *8),),
                                          SizedBox(width: 6,),
                                          Icon(Icons.shopping_cart,color: kOrange,)
            ],
          ),
        ),
      ),
    );
  }
}