import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login_page.dart';

class AuthTabbedPage extends StatefulWidget {
  const AuthTabbedPage({Key? key}) : super(key: key);

  @override
  State<AuthTabbedPage> createState() => _AuthTabbedPageState();
}

class _AuthTabbedPageState extends State<AuthTabbedPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: TabBar(indicatorColor: Colors.transparent, tabs: [
              _individualTab(context, "Login"),
              _individualTab(context, "Signup")
            ]),
          ),
          Flexible(
            child: Container(
              child: TabBarView(children: [
                Container(child: LoginPage()),
                Container(
                  child: Text("Articles Body",
                      style: TextStyle(color: Colors.amber)),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _individualTab(BuildContext context, String title) {
    return Container(
        height: MediaQuery.of(context).padding.bottom,
        margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
        padding: const EdgeInsets.all(0),
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
                color: Color.fromRGBO(255, 255, 255, 0.27),
                width: 2,
                style: BorderStyle.solid),
          ),
        ),
        child: Center(
          child: Tab(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ));
  }
}
