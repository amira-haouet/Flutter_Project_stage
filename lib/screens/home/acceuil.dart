import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class WelcomeScreen extends StatelessWidget {
// This widget is the root
// of your application

  @override
  Widget build(BuildContext context) {
    /*  return MaterialApp(
               debugShowCheckedModeBanner: false,
*/
    /*  home: Scaffold(
       
          appBar: AppBar(
             new Text('welcome to GEEC' ,style: new TextStyle(
                    color: Colors.blueGrey[600], fontWeight: FontWeight.bold , fontSize: 20.0,),),
            new Image.asset(
              'assets/images.png',
              width: 200.0,
              height: 200.0,
            ),
            ),
        
*/
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange,
        title: new Text(
          'welcome to GEEC',
          style: new TextStyle(
            color: Colors.blueGrey[600],
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
 body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
             Text(' Take control of your energy usage',
          
          style: TextStyle(fontWeight: FontWeight.bold,color : Colors.green,fontSize: 20.0),

          ),
          Text('Voltaware uses AI to track your energy use down to the appliance level. This enables you to get on top of your electricity bill, reduce your carbon footprint, make your home safer, monitor elderly relatives, and much more…',  
          style: TextStyle(fontWeight: FontWeight.bold,color : Colors.grey[800],fontSize: 15.0),
          textAlign: TextAlign.justify,

          ),
              Container(height: 10), // set height

             Container(       child: Table(
                       border: TableBorder.all(  
                        color: Colors.black,  
                        style: BorderStyle.solid, 
 
                        width: 2),   
                         
children: [   TableRow( 
  children: [ 
    Column( crossAxisAlignment: CrossAxisAlignment.center,
   children:[
     
  CarouselSlider.builder(
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
                    alignment: Alignment.topCenter,// use aligment
              child: new Image.asset(
                
                imageList[itemIndex],
              fit: BoxFit.cover,
              // width: 400,
               height :180,
              ),
            ),
            options: CarouselOptions(
              autoPlay: true,
    enlargeCenterPage: true,
      autoPlayInterval: Duration(seconds: 3),

              viewportFraction: 0.9,
              aspectRatio: 1.0,
              initialPage: 0,
            ),
          ),

Text('tatatat'),

          ]
       )     ,]),
/*TableRow( children: [
   Column( children:[  Text('Voltaware sensorshylizijvmoitjozzhbtqzobhzorjojmztjoemiirjt',
          
          style: TextStyle(fontWeight: FontWeight.bold,color : Colors.green,fontSize: 22.0,       
                      

          ),

            ),
            ])]),
*/
 ]),),
            ],),));
  }
}
        /*  Expanded(
            child: 
            ],
          ),*/
      /*new ListView(
        children: [
          Image.asset(
            'assets/images.png',
            width: 100.0,
            height: 100.0,
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("ADD IMAGE URL HERE"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("ADD IMAGE URL HERE"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("ADD IMAGE URL HERE"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("ADD IMAGE URL HERE"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("ADD IMAGE URL HERE"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),*/
    

/*
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Text('Welcome to Geec !', style: Theme.of(context).textTheme.headline2,
        color:Colors.orange[600]),
      ),
    );
  }
}
*/
//
final List<String> imageList  = [
  "assets/geec1.jpg",
  "assets/geec2.jpg",
  "assets/geec.jpg",
  
];