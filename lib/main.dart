import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(SuperFriend());
}

class SuperFriend extends StatelessWidget {
  final List<String> _friendImages = [
    "images/lip.jpg",
    "images/arm.jpg",
    "images/baw.jpg",
    "images/nueng.jpg",
  ];
  final List<String> _friendNames = [
    "ผู้ชายตัวเล็ก",
    "แม่ค้าปลากัด",
    "ความหวังหมู่บ้าน",
    "ผู้ชายกลัวน้ำ",
  ];
  final List<String> _friendDetails = [
    "ลิป : เป็นเพื่อนที่พูดน้อย ไม่ค่อยกล้าแสดงออก แต่อัธยาศัยดี มีอะไรให้ช่วยแค่ขอให้บอก",
    "อาร์ม : เป็นเพื่อนที่พูดมาก และถ้าคิดจะขาดเรียน อาร์มจะโทรจิกจนต้องมาเรียน",
    "บ่าว : เป็นเพื่อนที่พูดตรงไปตรงมา ขอความช่วยเหลืออะไรไป บ่าวช่วยตลอด",
    "หนึ่ง : เป็นเพื่อนที่ไม่ค่อยชอบอาบน้ำ แต่ใจดี คิดบวก เป็นที่ระบายได้หลาย ๆ เรื่อง",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent[700],
          title: Text("Super Friend"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    color: Colors.pinkAccent[700],
                    child: Center(
                      child: Text(
                        "Super Friend",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Friend(this._friendNames[0], this._friendImages[0],
                      this._friendDetails[0]),
                  Friend(this._friendNames[1], this._friendImages[1],
                      this._friendDetails[1]),
                  Friend(this._friendNames[2], this._friendImages[2],
                      this._friendDetails[2]),
                  Friend(this._friendNames[3], this._friendImages[3],
                      this._friendDetails[3]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Friend extends StatelessWidget {
  String _friendNames;
  String _friendImages;
  String _friendDetails;

  Friend(this._friendNames, this._friendImages, this._friendDetails, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.pinkAccent[100],
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(this._friendImages),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, color: Colors.redAccent[400]),
                  Text(
                    this._friendNames,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink[900],
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite, color: Colors.redAccent[400])
                ],
              ),
            ),
            Container(
              child: Text(this._friendDetails),
              padding: EdgeInsets.all(25),
            ),
          ],
        ),
      ),
    );
  }
}
