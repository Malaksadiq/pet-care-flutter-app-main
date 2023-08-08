import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/app_styles.dart';
import 'package:flutter_luckypet_app/detail_screen.dart';
import 'package:flutter_luckypet_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> dog = [
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png',
    ];
    List<String> names = [
      'Marlay',
      'Cocao',
      'Walt',
    ];
    List<String> cat = [
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png',
    ];
    List<String> name = [
      'alyx',
      'brook',
      'marly',
    ];
    List<String> date = [
      '10/sep/2023',
      '12/sep/2023',
      '14/sep/2023',
    ];
    List<String> descriptions = [
  'Marlay: Labrador Retriever - Friendly, intelligent, and obedient. Known for their gentle nature and great with families.',
  'Cocao: German Shepherd - Loyal, versatile, and intelligent. Excels in various roles, including police and service work.',
  'Walt: Golden Retriever - Friendly, intelligent, and devoted. Great companions often used as therapy and assistance dogs.',
];
 List<String> description = [
  'alyx: Siamese - Energetic and social cat breed known for its striking blue eyes.',
  'brook: Persian - Elegant and calm cat breed with luxurious long fur.',
  'marly: Maine Coon - Large and friendly cat breed with a distinctive tufted ears and bushy tail.',
];

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          iconTheme:  const IconThemeData(color: Colors.orange),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions:const [
             CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://img.lovepik.com/element/45016/4170.png_300.png'),
                    backgroundColor: Colors.amber,
                  ),
                  SizedBox(width: 10,)
          ],
        ),
        body: ListView(
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       // ElevatedButton(
            //       //   onPressed: (){
            //       //     setState(() {
            //       //       // OpenDrawer();
            //       //     });
            //       //   },
            //       //   child: SvgPicture.asset("assets/nav_icon.svg")),
            //       const CircleAvatar(
            //         radius: 20,
            //         backgroundImage: NetworkImage(
            //             'https://img.lovepik.com/element/45016/4170.png_300.png'),
            //         backgroundColor: Colors.amber,
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/welcome_message.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 150,
                      bottom: 30,
                      right: 0,
                      top: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'hello, ',
                                style: kSourceSansProregular.copyWith(
                                    color: kBlack,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3.5),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'sadiq 👋',
                                style: kSourceSansProBold.copyWith(
                                  fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                                  color: kBlack,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ready for an amazing and lucky experiance  🐕🐕‍🦺',
                            style: kSourceSansProregular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: kBlack,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: kPaddingHorizontal),
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  ),
              height: 30,
              // width: 50,
              child: Row(
                children: [
                  Text(
                    'Dogs 🐕‍🦺 ',
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                      color: kBlack,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 169,
              child: ListView.builder(
                itemCount: dog.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                        left: index == 0 ? 25 : 15,
                        right: index == dog.length - 1 ? 30 : 0),
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 14,
                            offset: const Offset(0, 3),
                            color: kBoxShadowColor.withOpacity(0.18))
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                    
                        onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PetDetailScreen(
                            descriptions:descriptions[index] ,
                          date:   date[index] ,
                            image: 'assets/images/${dog[index]}' ,
                            title: names[index],
                          ),
                        ),
                      );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadiusList),
                              child: Image.asset(
                                'assets/images/${dog[index]}',
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // padding: EdgeInsets.symmetric(vertical:10,horizontal:5),
                                height: 24,
      
                                decoration: BoxDecoration(
                                  color: kLightOrange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Banana',
                                    style: kSourceSansProBold.copyWith(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 4,
                                        color: kOrange),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.favorite_outline,
                                size: 20,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Text(
                            names[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3),
                          ),
                          Text(
                            date[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: kSourceSansProregular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: kPaddingHorizontal),
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  ),
              height: 30,
              // width: 50,
              child: Row(
                children: [
                  Text(
                    'Cats 🐈  ',
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                      color: kBlack,
                    ),
                  )
                ],
              ),
            ),
      
            SizedBox(
              height: 169,
              child: ListView.builder(
                itemCount: cat.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                        left: index == 0 ? 25 : 15,
                        right: index == cat.length - 1 ? 30 : 0),
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 14,
                            offset: const Offset(0, 3),
                            color: kBoxShadowColor.withOpacity(0.18))
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius:
                                BorderRadius.circular(kBorderRadiusList),
                            child: GestureDetector(
                                onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PetDetailScreen(
                            descriptions:description[index] ,
                          date:   date[index] ,
                            image: 'assets/images/${cat[index]}' ,
                            title: name[index],
                          ),
                        ),
                      );
                      },
                              child: Image.asset(
                                'assets/images/${cat[index]}',
                                fit: BoxFit.cover,
                              ),
                            )),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // padding: EdgeInsets.symmetric(vertical:10,horizontal:5),
                              height: 24,
      
                              decoration: BoxDecoration(
                                color: kLightOrange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'Buiscut',
                                  style: kSourceSansProBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 4,
                                      color: kOrange),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_outline,
                              size: 20,
                              color: Colors.red,
                            )
                          ],
                        ),
                        Text(
                          name[index],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        ),
                        Text(
                          date[index],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProregular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          //   FloatingActionButton(onPressed: (){},
          //   child: const Text('add to chart',style: TextStyle(color: Colors.red),),
          //   )
          ],
        ),
      ),
    );
  }
}
