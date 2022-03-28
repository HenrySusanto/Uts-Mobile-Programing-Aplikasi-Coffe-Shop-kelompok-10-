import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts/black%20coffee.dart';
import 'package:uts/cappucinomenu.dart';
import 'package:uts/coffeemilk.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF7ECDE),
        appBar: AppBar(
          backgroundColor: Color(0xffD67D3E),
          title: Text("Welcome "),
        ),
        body: ListView(
        children: [

          Container(
            height: 100,
            color: const Color(0xffF7ECDE),
          child: Container(
            margin: const EdgeInsets.only(top: 30 ,left: 20,right: 20),
           child: TextField(
            decoration: InputDecoration(
              fillColor: const Color(0xffFFFFFF),
              filled: true,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
              hintText: "Search",
            ),
            controller: controller,
          ),
          ),
        ),

          Container(
            height: 200,
            color: Color(0xffF7ECDE),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [

                Container(

                  margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Column(
                    children:  [

                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/caffeine.jpg"
                              ),
                            ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),

                      const Text("Coffe milk",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                            Text("Without Sugar",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                            ),),
                     Row(
                       children: [
                         Container(

                           child: Text(" 6.12",
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 18
                           ),),),
                         RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                             shape: StadiumBorder(),
                             onPressed:(){
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                             return CoffeeMilk();
                           }));
                         }),
                       ],
                     )
                    ],
                  ),

                ),

                Container(

                  margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Column(
                    children:  [

                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/cappuccino.jpg"
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),

                      const Text("Cappucino",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      Text("Without Sugar",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 10
                        ),),
                      Row(
                        children: [
                          Container(

                            child: Text(" 5.12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),),
                          RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                              shape: StadiumBorder(),
                              onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return CappucinoMenu();
                            }));
                          }),
                        ],
                      )
                    ],
                  ),

                ),

                Container(

                  margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Column(
                    children:  [

                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/coffee.jpg"
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),

                      const Text("Black Coffee",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      Text("Without Sugar",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 10
                        ),),
                      Row(
                        children: [
                          Container(

                            child: Text(" 5.12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),),
                          RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                              shape: StadiumBorder(),
                              onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return BlackCoffeeMenu();
                            }));
                          }),
                        ],
                      )
                    ],
                  ),

                ),
              ],
            ),

          ),
          ),

          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20),
            color: Color(0xffF7ECDE),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(

                    margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Column(
                      children:  [

                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/caffeine.jpg"
                                ),
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        const Text("Cappucino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        Text("Without Sugar",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                          ),),
                        Row(
                          children: [
                            Container(

                              child: Text(" 5.12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),),
                            RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                shape: StadiumBorder()
                                ,onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return CappucinoMenu();
                              }));
                            }),
                          ],
                        )
                      ],
                    ),

                  ),

                  Container(

                    margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Column(
                      children:  [

                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/caffeine.jpg"
                                ),
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        const Text("Cappucino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        Text("Without Sugar",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                          ),),
                        Row(
                          children: [
                            Container(

                              child: Text(" 5.12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),),
                            RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                shape: StadiumBorder(),
                                onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return CappucinoMenu();
                              }));
                            }),
                          ],
                        )
                      ],
                    ),

                  ),

                  Container(

                    margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Column(
                      children:  [

                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/caffeine.jpg"
                                ),
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        const Text("Cappucino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        Text("Without Sugar",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                          ),),
                        Row(
                          children: [
                            Container(

                              child: Text(" 5.12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),),
                            RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                shape: StadiumBorder(),
                                onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return CappucinoMenu();
                              }));
                            }),
                          ],
                        )
                      ],
                    ),

                  ),


                ],
              ),

            ),
          ),

          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20),
            color: Color(0xffF7ECDE),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  Container(

                    margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Column(
                      children:  [

                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/caffeine.jpg"
                                ),
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        const Text("Cappucino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        Text("Without Sugar",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                          ),),
                        Row(
                          children: [
                            Container(

                              child: Text(" 5.12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),),
                            RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                shape: StadiumBorder()
                                ,onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return CappucinoMenu();
                                  }));
                                }),
                          ],
                        )
                      ],
                    ),

                  ),

                  Container(

                    margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Column(
                      children:  [

                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/caffeine.jpg"
                                ),
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        const Text("Cappucino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        Text("Without Sugar",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                          ),),
                        Row(
                          children: [
                            Container(

                              child: Text(" 5.12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),),
                            RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                shape: StadiumBorder(),
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return CappucinoMenu();
                                  }));
                                }),
                          ],
                        )
                      ],
                    ),

                  ),

                  Container(

                    margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Column(
                      children:  [

                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/caffeine.jpg"
                                ),
                              ),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        const Text("Cappucino",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        Text("Without Sugar",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10
                          ),),
                        Row(
                          children: [
                            Container(

                              child: Text(" 5.12",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),),
                            RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                shape: StadiumBorder(),
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return CappucinoMenu();
                                  }));
                                }),
                          ],
                        )
                      ],
                    ),

                  ),


                ],
              ),

            ),
          ),

        Container(
          margin: EdgeInsets.only(top: 20),
        height: 70,
        color: Color(0xffD67D3E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            IconButton( color:(Colors.white), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainPage();
              }));
            }, icon: Icon(Icons.home)),

            IconButton(color:(Colors.white),onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.shopping_cart)),

            IconButton(color:(Colors.white), onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.share)),
          ],
        ),
        )



        ],),

      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon , String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color,),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400,
              color: color
          ),
        ),
      )
    ],
  );
}


