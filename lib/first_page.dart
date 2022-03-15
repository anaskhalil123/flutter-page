import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  var arabicNumber = ArabicNumbers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'عاصمة فلسطين',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )),
        backgroundColor: Color.fromRGBO(157, 89, 235, 1),
        // #9D59EB
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Container(
                child: Image(
                  fit: BoxFit.fitWidth,
                  width: 420,
                  height: 215,
                  image: AssetImage('assets/mosque.png'),
                ),
              ),
              Text(
                'مدينة القدس',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
              DataRow('الاسم', 'القدس'),
              DataRow('المساحة', '${arabicNumber.convert(125)} '),
              DataRow('السكان', ' ${arabicNumber.convert(385000)} نسمة'),
              DataRow('الدولة', 'فلسطين'),
              DataRow('اسم الطالب', 'أنس وليد الشيخ خليل'),
            ],
          ),
        ),
      ),
    );
  }
}

class DataRow extends StatelessWidget {
  String name;
  String value;
  var textStyle = const TextStyle(
    fontFamily: 'Amiri',
    fontSize: 24,
    color: Color.fromRGBO(112, 112, 112, 0.88),
  );

  var textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(width: 1.7, color: Colors.black45),
  );

  // ignore: use_key_in_widget_constructors
  DataRow(this.name, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(112, 112, 112, 0.09),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(width: 1.5, color: Colors.black45),
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      padding: const EdgeInsets.all(3),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 245,
            margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            decoration: textDecoration,
            child: Text(
              value,
              style: textStyle,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 110,
            decoration: textDecoration,
            child: Text(
              name,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
