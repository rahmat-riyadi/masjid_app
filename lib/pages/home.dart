import 'package:flutter/material.dart';
import 'package:mesjid_app/pages/index_page.dart';
import 'package:mesjid_app/pages/pemasukan.dart';
import 'package:mesjid_app/pages/pengeluaran.dart';
import 'package:mesjid_app/pages/user.dart';
import 'package:mesjid_app/utils/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController? tabController;
  int curIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    dynamic pageList = [
      const Index(),
      const PemasukanPage(),
      const PengeluaranPage(),
      const UserPage(),
    ];

    return DefaultTabController(
      length: pageList.length,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Pallete.primary,
          unselectedItemColor: Colors.grey[500],
          currentIndex: curIndex,
          onTap: (i) => setState(() {
            tabController!.index = i;
            curIndex = i;
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              label: 'pemasukan'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.outbox),
              label: 'pengeluaran'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'akun'
            ),
          ],
        ),
        body: SafeArea(
          child: TabBarView(
            controller: tabController,
            children: pageList
          ),
        ),
      ),
    );
  }
}


