import 'package:flutter/material.dart';
import 'package:whats_up/pages/calls.dart';
import 'package:whats_up/pages/camera.dart';
import 'package:whats_up/pages/chat.dart';
import 'package:whats_up/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
          ),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHAT",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6,
              ),
            ),
            Icon(
              Icons.more_vert,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff075E54),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            CameraPage(),
            ChatPage(),
            StatusPage(),
            CallsPage(),
          ],
        ));
  }
}
