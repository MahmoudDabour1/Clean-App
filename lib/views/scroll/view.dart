import 'package:clean/views/scroll/account/view.dart';
import 'package:clean/views/scroll/calendar/view.dart';
import 'package:clean/views/scroll/plan/view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _navViewState();
}

class _navViewState extends State<HomeView> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: const [
          PlanView(),
          CalenderView(),
          AccountView(),
        ],
      ),
    );
  }
}
