import 'package:barber_app/const/const.dart';
import 'package:barber_app/utils/components/buttons_widget.dart';
import 'package:flutter/material.dart';

import 'widget/calllist.dart';
import 'widget/chatlist.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {}); // Rebuild the UI when tab selection changes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
        bottom: TabBar(
          
          controller: _tabController,
          dividerColor: lightgrey,
          labelPadding: const EdgeInsets.all(5),
          indicator: null,
          indicatorColor: Colors.transparent,
          tabs: [
            
            Tab(
                child: SizedBox(
                  width: 150,
                  child: Outlinebutton(
                                buttonbgcolor:
                    _tabController.index == 0 ? yellow : Colors.transparent,
                                buttontextcolor: _tabController.index == 0 ? white : yellow,
                                buttonbordercolor: yellow,
                                buttontext: "Chats",
                                buttonborderRadius: 10,
                                onTap: () {
                  _tabController.animateTo(0);
                                },
                              ),
                )),
            Tab(
                child: SizedBox(
                                    width: 150,

                  child: Outlinebutton(
                                buttonbgcolor:
                    _tabController.index == 1 ? yellow : Colors.transparent,
                                buttontextcolor: _tabController.index == 1 ? white : yellow,
                                buttonbordercolor: yellow,
                                buttontext: "Calls",
                                buttonborderRadius: 10,
                                onTap: () {
                  _tabController.animateTo(1);
                                },
                              ),
                )),
           
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // Add your booking screens here
          ChatListPage(),
          CallListPage(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}