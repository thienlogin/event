import 'package:event/constan/assets_part_const.dart';
import 'package:event/representations/page/topBXH_page.dart';
import 'package:event/representations/screen/bxh_screen.dart';
import 'package:event/representations/widget/dropdown_BXH_widget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 400.0,
              floating: true,
              pinned: true,
              backgroundColor: Colors.transparent,
              title: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 8,
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            isDense: true,
                            icon: Icon(
                              Icons.search_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                            hintText: 'Tìm kiếm video, tên truyện, ID...',
                            hintStyle: TextStyle(fontSize: 12, color: Colors.white),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), topRight: Radius.circular(50)),
                            ),
                            fillColor: Colors.transparent,
                          ),
                          cursorHeight: 25,
                          // you can put your ideal height here
                          style: const TextStyle(color: Colors.white, height: 1.5, fontSize: 12, fontWeight: FontWeight.normal),
                          keyboardType: TextInputType.visiblePassword,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Vui lòng nhập từ khóa. ';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyDropdownButton(),
                  ),
                ],
              ),
              flexibleSpace: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                AssetsPathConst.background,
                              ),
                              fit: BoxFit.cover),
                          color: Colors.white),
                    ),
                  ),
                  FlexibleSpaceBar(
                    background: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetsPathConst.logoWoa,
                              height: 25,
                            ),
                            Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.white,
                            ),
                            Image.asset(
                              AssetsPathConst.logoManHua,
                              height: 26,
                            ),
                          ],
                        ),
                        Image.asset(
                          AssetsPathConst.event_truyen,
                          height: 170,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'TỔNG GIẢI THƯỞNG LÊN ĐẾN ',
                              style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal, shadows: [
                                Shadow(
                                  color: Colors.black54,
                                  offset: Offset(2, 2),
                                )
                              ]),
                            ),
                            Text(
                              '12.000.000 VNĐ',
                              style: TextStyle(fontSize: 14, color: Colors.yellow, fontWeight: FontWeight.normal, shadows: [
                                Shadow(
                                  color: Colors.black54,
                                  offset: Offset(2, 2),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ZoomTapAnimation(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      spreadRadius: 3,
                                      blurRadius: 3,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Tham gia ngay ►',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverAppBar(
              pinned: true,
              collapsedHeight: 80,
              expandedHeight: 80,
              flexibleSpace: Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Image.asset(
                  AssetsPathConst.text_bxh,
                  height: 100,
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                TabBar(
                  physics: NeverScrollableScrollPhysics(),
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
                      Radius.circular(12),
                    ),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            TopBXH(),
            TopBXH(),
            TopBXH(),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
