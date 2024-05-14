import 'package:flutter/material.dart';
import 'package:nectar/feature/bottom%20navigation%20bar/presentation/views/widgets/my_bottom_navigation_bar.dart';
import 'package:nectar/feature/bottom%20navigation%20bar/presentation/views/widgets/my_bottom_navigation_bar_item.dart';
import 'package:nectar/feature/explore/presentation/views/explore_view.dart';
import 'package:nectar/feature/favorite/favorite_view.dart';
import 'package:nectar/feature/my%20cart/presentation/views/my_cart_view.dart';
import 'package:nectar/feature/profile/profile_view.dart';
import 'package:nectar/feature/shop/shop_view.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({super.key});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  static const screens = [
    ShopView(),
    ExploreView(),
    MyCartView(),
    FavoriteView(),
    ProfileView(),
  ];
  int _selectedTap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: screens[_selectedTap],
    );
  }

  MyBottomNavigationBar _buildBottomNavigationBar() {
    return MyBottomNavigationBar(
      items: [
        MyBottomNavigationBarItem(
          icon: 'assets/images/store.svg',
          label: 'Shop',
          isSelected: _selectedTap == 0,
          onPressed: () {
            setState(() {
              _selectedTap = 0;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/images/explore.svg',
          label: 'Explore',
          isSelected: _selectedTap == 1,
          onPressed: () {
            setState(() {
              _selectedTap = 1;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/images/cart.svg',
          label: 'Cart',
          isSelected: _selectedTap == 2,
          onPressed: () {
            setState(() {
              _selectedTap = 2;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/images/favorite.svg',
          label: 'Favorite',
          isSelected: _selectedTap == 3,
          onPressed: () {
            setState(() {
              _selectedTap = 3;
            });
          },
        ),
        MyBottomNavigationBarItem(
          icon: 'assets/images/person.svg',
          label: 'Profile',
          isSelected: _selectedTap == 4,
          onPressed: () {
            setState(() {
              _selectedTap = 4;
            });
          },
        ),
      ],
    );
  }
}
