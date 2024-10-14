import 'package:flutter/material.dart';

// import 'service_page.dart';
// import 'activity_page.dart';
// import 'account_page.dart';

class CustomNavbar extends StatelessWidget {
  final PageController _pageController = PageController(); // To manage page views
  // final List<Widget> _pages = [
  //   HomePage(),
  //   ServicePage(),
  //   ActivityPage(),
  //   AccountPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Navbar Example'),
        backgroundColor: Colors.blueGrey,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Disable swipe gesture
       
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          _pageController.jumpToPage(index); // Jump to selected page
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

