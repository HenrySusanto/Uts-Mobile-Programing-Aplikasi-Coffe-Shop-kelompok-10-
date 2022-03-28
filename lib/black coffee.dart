import 'package:flutter/material.dart';
import 'package:uts/mainpage.dart';

class BlackCoffeeMenu extends StatefulWidget {
  const BlackCoffeeMenu({Key? key}) : super(key: key);

  @override
  _BlackCoffeeMenuState createState() => _BlackCoffeeMenuState();
}

class _BlackCoffeeMenuState extends State<BlackCoffeeMenu> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Color(0xffF7ECDE),

        body: Container(
          height: 630,
          width: 360,
          child: Column(
            children: [
            Container(
              margin: EdgeInsets.only(top: 20,left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                ],
              ),
            ),

              Container(
                margin: EdgeInsets.only(top: 0),
                height: 140,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/coffee.jpg"
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 360,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,

                ),


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                        margin: EdgeInsets.only(left: 20, top: 20  ),
                        child : Row(
                          children: [
                            Text("Black Coffee ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            const FavoriteWidget(),
                          ],
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("About",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold

                                ),),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Latte art developed independently in different countries, following the introduction of espresso and the development of microfoam, the combination of crema (which is an emulsion of coffee oil and brewed coffee) and microfoam allowing the pattern; it presumably was initially developed in Italy.",
                                style: TextStyle(
                                  fontSize: 12,
                                ),),
                            ),

                            Container(
                                margin: EdgeInsets.only(left: 90,top: 30),
                                child: Row(
                                  children: [
                                    RaisedButton( color: Color(0xffDFDFDE),child: Text("Order"),
                                        shape: StadiumBorder(),
                                        onPressed:(){
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return MainPage();
                                          }));
                                          print("Order");
                                        }),
                                    Text("5.12")
                                  ],
                                )
                            )

                          ],
                        )
                    )



                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool  _isFavorite = true;
  int  _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            icon: (_isFavorite ? const Icon(Icons.star) : const Icon(Icons.star_border)
            ),color: Colors.red,
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          child: Text('$_favoriteCount'),
        )
      ],
    );
  }
  void _toggleFavorite(){
    setState(() {
      if(_isFavorite){
        _favoriteCount -= 1;
        _isFavorite = false;
      }else{
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
}
