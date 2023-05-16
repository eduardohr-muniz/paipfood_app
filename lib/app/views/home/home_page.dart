import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:paipfood_app/app/core/shared/user_shared.dart';
import 'package:paipfood_app/app/core/widgets/selector_type_order.dart';
import 'package:paipfood_app/app/views/home/home_controller.dart';
import 'package:paipfood_app/app/views/home/widgets/banner_slide.dart';
import 'package:paipfood_app/app/views/home/widgets/card_restaurant.dart';
import 'package:paipfood_app/app/views/home/widgets/header.dart';
import 'package:paipfood_app/app/views/home/widgets/tab_bar_custom.dart';
import 'package:paipfood_app/app/views/home/widgets/text_fild_searching.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;
  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: const SizedBox.shrink(),
            expandedHeight: 98,
            backgroundColor: Colors.transparent,
            elevation: 0,
            pinned: true,
            snap: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    SizedBox(height: context.mediaQuery.padding.top),
                    Header(
                      onTap: () {
                        Navigator.of(context).pushNamed("adress");
                      },
                    ),
                    const SelectorTypeOrder(),
                  ],
                ),
              ),
            ),
          )
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.watch<UserShared>().name.toString()),
                const BannerSlide(),
                const TextFildSearching(),
                const SizedBox(height: 8),
                const TabBarCustom(),
                const SizedBox(height: 8),
                Text("Restaurantes", style: context.textTheme.titleSmall),
                const CardRestaurant(),
                const CardRestaurant(),
                const CardRestaurant(),
                const CardRestaurant(),
                const CardRestaurant(),
                const CardRestaurant(),
              ],
            ),
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 3, top: 0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(10),
              tabs: [
                GButton(icon: Icons.home_filled, text: "Home", iconActiveColor: context.primaryColor),
                GButton(icon: Icons.search, text: "Busca", iconActiveColor: context.primaryColor),
                GButton(icon: Icons.local_activity_outlined, text: "Cupons", iconActiveColor: context.primaryColor),
                GButton(icon: Icons.favorite_outline, text: "Favoritos", iconActiveColor: context.primaryColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
