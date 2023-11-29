import 'package:event/constan/assets_part_const.dart';
import 'package:event/constan/colors_const.dart';
import 'package:flutter/material.dart';

class MyDropdownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.menu),
      iconColor: Colors.white,
      shadowColor: Colors.black87,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          // row has two child icon and text.
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: ColorConst.colorPrimary,
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_menu_upload,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Đăng tải videos")
            ],
          ),
        ),
        // popupmenu item 2
        PopupMenuItem(
          value: 2,
          // row has two child icon and text
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: ColorConst.colorPrimary,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_memu_thele,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text("Thể lệ")
            ],
          ),
        ),
        PopupMenuItem(
          value: 3,
          // row has two child icon and text
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: ColorConst.colorPrimary,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_memu_giaithuong,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text("Giải thưởng")
            ],
          ),
        ),
        PopupMenuItem(
          value: 4,
          // row has two child icon and text
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: ColorConst.colorPrimary,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_memu_dangky,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text("Đang ký dự thi")
            ],
          ),
        ),
        PopupMenuItem(
          value: 5,
          // row has two child icon and text
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: ColorConst.colorPrimary,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_memu_rank,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text("Bảng Xếp Hạng")
            ],
          ),
        ),
        PopupMenuItem(
          value: 6,
          // row has two child icon and text
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: ColorConst.colorPrimary,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_memu_coin,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text("Xu của bạn")
            ],
          ),
        ),
        PopupMenuItem(
          value: 7,
          // row has two child icon and text
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: ColorConst.colorPrimary,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AssetsPathConst.ico_memu_dangky,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text("Đăng Nhập / Đăng Ký")
            ],
          ),
        ),
      ],
      offset: Offset(20, 50),
      color: Colors.white,
      elevation: 18,
    );
  }
}
