import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/app_styles.dart';
import 'app_styles.dart';
import 'size_config.dart';

class PetDetailScreen extends StatefulWidget {
  String title;
  String image;
  String date;
  String descriptions;
  PetDetailScreen(
      {required this.title,
      required this.image,
      super.key,
      required this.date,
      required this.descriptions});

  @override
  State<PetDetailScreen> createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: kLightOrange,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.title,
             style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! *8,color: kOrange),
          ),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(15),
                child: Image.asset(widget.image)),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                widget.date,
                   style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! *4,color: kBlack),
              ),
              
            ),
            
             Padding(
              
               padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
               child: Text(
                widget.descriptions,
                   style: kSourceSansProSemibold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! *5,color: kBlack),
                         ),
             )
          ],
        ),
      ),
    );
  }
}
