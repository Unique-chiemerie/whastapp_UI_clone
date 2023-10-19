import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whastapp_clone/screens/chats.dart';
import 'package:whastapp_clone/screens/sub_screens/calls.dart';
import 'package:whastapp_clone/screens/sub_screens/status.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabchange);
  }

  void _handleTabchange() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //the whatsapp color bg
        backgroundColor: const Color.fromARGB(255, 1, 22, 33),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 28, 41, 39),
          title: Text(
            'Whatsapp',
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.start,
          ),
          actions: [
            const SizedBox(
              width: 70,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_sharp,
                color: Colors.grey,
              ),
            ),
          ],
          //the labels of the tabs
          bottom: TabBar(
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              dividerColor: const Color.fromARGB(255, 28, 41, 39),
              tabs: [
                const Tab(
                  icon: Icon(
                    Icons.supervised_user_circle_outlined,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'Chats',
                    style: GoogleFonts.dmSans(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Status',
                    style: GoogleFonts.dmSans(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: GoogleFonts.dmSans(color: Colors.white),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            Placeholder(),
            Chats(),
            Statusscreen(),
            Calls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[800],
          onPressed: () {},
          child: Icon(
            _geticon(),
          ),
        ),
      ),
    );
  }

  IconData _geticon() {
    switch (_tabController.index) {
      case 0:
        return Icons.chat;
      case 1:
        return Icons.chat;
      case 2:
        return Icons.camera_alt;
      case 3:
        return Icons.call_sharp;
      default:
        return Icons.chat;
    }
  }
}
