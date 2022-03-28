import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts/Styles/widgets/coffeebox.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts/loginpage.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        color: Color(0xffD67D3E),
        child: ListView(
          children: [
            CarouselSlider(
              items: [

                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://blog.liebherr.com/huishoud/nl/wp-content/uploads/sites/21/2019/11/irish-coffee_post2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://s-i.huffpost.com/gen/1753768/images/o-SUSTAINABLE-COFFEE-facebook.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("http://article.innovadatabase.com/articleimgs/article_images/637217622238903742fvaeN52o.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.tasteatlas.com/images/ingredients/fef72fc04df94f539ad7525076221247.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://content.paodeacucar.com/wp-content/uploads/2018/05/irish-coffee-capa.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 500.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 100 , right: 100 ,top: 30),
              child:RaisedButton( color: Color(0xff632626),child: Text("Get Start",style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),), onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginPage();
                }));
              },
              ),
            )
          ],
        ),
      )

    );
  }

}







// class SliderPage extends StatelessWidget {
//   const SliderPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     PageController  controller = PageController(initialPage: 0, viewportFraction: 0.8);
//     List<Color> colors = [Colors.red ,Colors.green];
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: PageView.builder(
//           itemCount: colors.length,
//           itemBuilder: (context,index) => Center(child: CoffeeBox(),)
//
//       ),
//     );
//   }
// }
