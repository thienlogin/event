import 'package:event/representations/page/topBXH_page.dart';
import 'package:flutter/material.dart';

class BxhScreen extends StatefulWidget {
  const BxhScreen({super.key});

  @override
  State<BxhScreen> createState() => _BxhScreenState();
}

class _BxhScreenState extends State<BxhScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          // TabBar
          TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            controller: _tabController,
            tabs: [
              Container(margin: EdgeInsets.symmetric(horizontal: 20), child: Tab(text: 'Tổng vote')),
              Container(margin: EdgeInsets.symmetric(horizontal: 20), child: Tab(text: 'Tiêu đề hay nhất')),
              Container(margin: EdgeInsets.symmetric(horizontal: 20), child: Tab(text: 'Lượt xem')),
            ],
            labelStyle: TextStyle(),
            indicator: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            indicatorSize: TabBarIndicatorSize.label,
          ),

          // TabBarView
          SizedBox(
            height: 700,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                TopBXH(),
                TopBXH(),
                TopBXH(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
