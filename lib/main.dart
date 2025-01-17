import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
);

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark), // Modified
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87,),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
              
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Find Your', style: TextStyle(color: Colors.black87, fontSize: 25)),
                  SizedBox(height: 5),
                  Text('Inspiration', style: TextStyle(color: Colors.black87, fontSize: 40)),
                  
                  SizedBox(
                    height : 10
                  ),
                  
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244,243,243,1),
                      borderRadius: BorderRadius.circular(15) 
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.black87,),
                        hintText: "Search what you're looking for ",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Promo Today", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      promoimages("assets/images/bachi.jpg"),
                      promoimages("assets/images/building1.webp"),
                      promoimages("assets/images/ibbi12.jpg"),
                      promoimages("assets/images/building123.jpg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/escalade.jpg"),
                    )
                  ),
                   child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: [0.1,0.9],
                        colors: [
                           Colors.black.withOpacity(.8),
                           Colors.black.withOpacity(0.1)
                           ] 
                           )
                           ),
                           child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:  const EdgeInsets.all(15.0),
                              child: Text('Best Design', style: TextStyle(color: Colors.white, fontSize: 20),),
                            ),
                           ),
                           ),
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget promoimages(String image)
{
return AspectRatio(
  aspectRatio: 2.62/3,
  child: Container(
    margin: EdgeInsets.only(right :18.0),
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [0.1,0.9],
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(0.1)
          ] 
        )
      ),
    ),
    ),
  );
}