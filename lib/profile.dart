import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'drawer.dart';
import 'size_config.dart';
class ProfileScreen
 extends StatelessWidget {
  const ProfileScreen
  ({super.key});

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
        
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('profile',  style: kSourceSansProBold.copyWith(
                                      color: kOrange,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *8),),
                                          SizedBox(width: 6,),
                                          Icon(Icons.person,color: kOrange,size: 30,)
            ],
          ),
        ),
      ),
    );
  }
}