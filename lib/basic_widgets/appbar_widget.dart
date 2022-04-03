import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widgets'),
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.playlist_play),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add_check),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            icon: Icon(Icons.directions_car),
          ),
          Tab(
            icon: Icon(Icons.directions_transit),
          ),
          Tab(
            icon: Icon(Icons.directions_bike),
          ),
        ]),
      ),
    );
  }
}
