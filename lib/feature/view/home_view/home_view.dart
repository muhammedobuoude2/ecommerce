import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:ecommerce/feature/model/best_sell_model.dart';
import 'package:ecommerce/feature/model/categroy_model.dart';
import 'package:ecommerce/feature/view/home_view/widget_categrios_one.dart';
import 'package:ecommerce/feature/view/widget/best_seeling.dart';
import 'package:ecommerce/feature/view/widget/bottom_navigation.dart';
import 'package:ecommerce/feature/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/state_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 65,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorManager.instance.graykColor.withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorManager.instance.blackColor,
                        size: 30,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 44),
              Text(
                'Categories',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: ColorManager.instance.blackColor),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: StreamBuilder<QuerySnapshot>(
                  // inside the <> you enter the type of
                  //your stream
                  stream: FirebaseFirestore.instance
                      .collection('categroy')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (snapshot.hasData) {
                      return ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          CategoreyModel model =
                              CategoreyModel.fromQuerySnapshot(snapshot
                                      .data!.docs[index]
                                  as DocumentSnapshot<Map<String, dynamic>>);
                          return WidgetCategriosOne(
                              onTap: () {},
                              nameCategorise: model.name ?? '',
                              pathIcon: model.image ?? '');
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 20,
                          );
                        },
                      );
                    }
                    if (snapshot.hasError) {
                      return const Text('Error');
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'Best Selling',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SFPRODISPLAYTHINITALIC'),
                  ),
                  const Spacer(),
                  Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SFPRODISPLAYREGULAR'),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                  height: 320,
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('productBestSell')
                        .orderBy('price', descending: true)
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (snapshot.hasData) {
                        return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              BestSellModel modelsell =
                                  BestSellModel.fromQuerySnapshot(
                                      snapshot.data!.docs[index]
                                          as DocumentSnapshot<
                                              Map<String, dynamic>>);
                              return BestSelling(
                                  nameText: modelsell.nameText ?? '',
                                  bodyText: modelsell.bodyText ?? '',
                                  pathImage: modelsell.pathImage ?? '',
                                  price: modelsell.price ?? '');
                            },
                            itemCount: 2,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                width: 20,
                              );
                            });
                      }
                      if (snapshot.hasError) {
                        return const Text('Error');
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
