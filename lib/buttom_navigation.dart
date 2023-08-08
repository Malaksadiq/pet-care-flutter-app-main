import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/app_styles.dart';
import 'package:flutter_luckypet_app/profile.dart';
import 'cart_screen.dart';
import 'homescreen.dart';

class BottomNavigationbar extends StatefulWidget {
  int selectedIndex;
   BottomNavigationbar({required this.selectedIndex,key}) : super(key: key);
   static const routName='BottomNavigationbar';
  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  // int selectedIndex = 0;

  void _navigateToScreen(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.selectedIndex,
        children: const [
          HomeScreen(),
          Cart(),
         ProfileScreen ()
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:widget. selectedIndex,
        onTap: _navigateToScreen,
        items: [
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 0
                ?const Icon(Icons.home,color: kOrange,size: 34,)
                : const Icon(Icons.home_outlined,),
            // icon: selectedIndex == 0
            //     ? SvgPicture.asset('assets/images/home_selected.svg', color: Colors.black)
            //     : SvgPicture.asset('assets/images/home_unselected.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 1
                  ?const Icon(Icons.shopping_cart,color: kOrange,size: 34):const Icon(Icons.shopping_cart_outlined)
                // ? SvgPicture.asset('assets/images/cart_selected.svg')
                // : SvgPicture.asset('assets/images/cart_unselected.svg'),
           , label: '',
          ),
          BottomNavigationBarItem(
            icon: widget.selectedIndex == 2
            ?const Icon(Icons.person,color: kOrange,size: 34):const Icon(Icons.person_outline)
                // ? SvgPicture.asset('assets/images/profile_selected.svg')
                // : SvgPicture.asset('assets/images/profile_unselected.svg'),
          ,  label: '',
          ),
        ],
        
      ),
      
    );
  }
}
