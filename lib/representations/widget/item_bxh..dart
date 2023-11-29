import 'package:flutter/material.dart';

class ItemBxh extends StatelessWidget {
  const ItemBxh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade100,
              Colors.blue.shade50,
            ],
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 200,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://blogger.googleusercontent.com/img/a/AVvXsEh6LKnVQ4EIzDdLrdH8kDnBgP8T1kxSsG2-tIFrWDxDf2Qp7S4MkcbwiiByy05HjHVTIAeXuHT281wCNY1glqq_2ZwLz4faoMDgbkDQTxet1c0iJwNd-MQPs48rEL84OdNZy_QuBOpHET16W6oHIL3qNXOu4KOuy3epSllmjoDjlmFtdXiAzk0MfqRCTzY=s16000'))),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Review truyện: Xuyên không tìm tương lai, bất ngờ đột phá bảy tầng tiên đạo!!! 🔥🔥🔥',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      _tagItem('Tu Tiên'),
                      _tagItem('Huyền Huyễn'),
                      _tagItem('Xuyên Không'),
                      _tagItem('Hệ Thống'),
                    ],
                  ),
                  Spacer(),
                  Text('bachcuuhoaAdmin')
                ],
              ),
            )
          ],
        ));
  }

  Container _tagItem(String strTag) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.white,
      ),
      child: Text('$strTag'),
    );
  }
}
