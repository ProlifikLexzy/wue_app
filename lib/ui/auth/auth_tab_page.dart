import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return Row(
      children: [
        Placeholder(
          fallbackHeight: 100,
          fallbackWidth: 100,
        ),
        TabBar(
          controller: _tabController,
          tabs: [
            _individualTab(context, "Login"),
            _individualTab(context, "Signup")
          ],
        ),
        TabBarView(
          controller: _tabController,
          children: myTabs.map((Tab tab) {
            return Center(child: Text(tab.text!));
          }).toList(),
        ),
      ],
    );
  }

  Widget _individualTab(BuildContext context, String title) {
    return Flexible(
      child: Container(
          height: MediaQuery.of(context).padding.bottom,
          margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
          padding: const EdgeInsets.all(0),
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                  color: Color.fromRGBO(255, 255, 255, 0.27),
                  width: 1,
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
          )),
    );
  }
}
