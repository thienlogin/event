import 'package:event/representations/widget/item_bxh..dart';
import 'package:flutter/material.dart';

class TopBXH extends StatefulWidget {
  const TopBXH({super.key});

  @override
  State<TopBXH> createState() => _TopBXHState();
}

class _TopBXHState extends State<TopBXH> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      // physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 13,
      itemBuilder: (BuildContext context, int index) {
        return ItemBxh();
      },
    );
  }
}
