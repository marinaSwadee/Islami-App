import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({Key? key}) : super(key: key);
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> tasbehList = [
    "سبحان الله",
    "الحمدالله",
    "الله اكبر"
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(angle: angle,
                    child: Image(image: AssetImage("assets/images/tasbeh.png")),
                  ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 200,left: 50),
                  child: Image(
                        image: AssetImage("assets/images/head_sebha_logo.png"),
                        fit: BoxFit.cover,
                      ),
                ),
                ],
              ),
             Text(
              'عدد التسبحات',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                tasbeh();
              },
              child: Container( padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Color(0xFFB7935F),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  tasbehList[index],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),),
            )
          ],
        ),
      ),

    );
  }
  void tasbeh(){
      if(counter< 33){
        angle += 0.5;
        counter++;
      }else{
        if(index < 2){
          index++;
          counter =0;
        }else{
          index =0;
          counter= 0;
        }
      }

    setState(() {});
  }
}


