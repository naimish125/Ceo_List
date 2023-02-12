import 'package:flutter/material.dart';

class CEO_List extends StatefulWidget {
  const CEO_List({Key? key}) : super(key: key);

  @override
  State<CEO_List> createState() => _CEO_ListState();
}

class _CEO_ListState extends State<CEO_List> {
  List ceoName = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayan",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan"
  ];
  List companyName = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZON",
    "RELIANCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "Dell",
    "INTEL"
  ];
  List ceoImg = [
    "assets/images/vpavic_171003_2029_0067.5.jpg",
    "assets/images/104891709-Bill_Gates_the_co-Founder.jpg",
    "assets/images/jeff-bezos-andrew-harrer_bloomberg-via-getty-images.jpg",
    "assets/images/mukesh-ambani.jpg",
    "assets/images/1128955260.jpg.0.jpg",
    "assets/images/adobeceo.jpg",
    "assets/images/Daniel-for-website.jpg",
    "assets/images/2015-597760harald-krueger1.jpg",
    "assets/images/michael-dell-dell-technologies-world.jpg",
    "assets/images/Bob_Swan_01.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffc0eff9),
            title: Text("CEO of MNC's", style: TextStyle(color: Colors.black),),
            centerTitle: true,
          ),
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    transform: GradientRotation(1),
                    colors: [Colors.blueAccent, Colors.blueAccent.shade100, Colors.blueAccent],
                  ),
                ),
              ),
              ListView.builder(
                itemBuilder: (context, index) => boxUI(
                    ceoName[index],
                    companyName[index],
                    ceoImg[index],
                    index % 2 == 0 ? Colors.black26: Colors.lightBlueAccent.shade700,
                    index % 2 == 1 ? Colors.white : Colors.black),
                itemCount: ceoName.length,
              ),
            ],
          )),
    );
  }

  Widget boxUI(
      String ceoName, String companyName, String imgPath, Color c1, Color c2) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: c1,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("$imgPath"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "${ceoName}",
                  style: TextStyle(
                    color: c2,
                    fontSize: 10,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "${companyName}",

                  style: TextStyle(
                    color: c2,
                    fontSize: 7,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                alignment: Alignment.center,
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white54, width: 1),
                ),
                child:
                Icon(Icons.navigate_next, color: Colors.white60, size: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
