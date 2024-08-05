import 'package:barber_app/utils/imports.dart';
import 'package:barber_app/view/explore_view/explore.dart';
import 'package:barber_app/view/home_view/home_view.dart';
import 'package:barber_app/view/inbox_view/inbox.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    Explorescreen(),
    BookingScreen(),
    InboxScreen(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: yellow,
        unselectedItemColor: grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment_rounded),
            label: 'Inbox',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.store),
          //   label: 'Store',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
