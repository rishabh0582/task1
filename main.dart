import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<String> images = [
    'assets/image1.jpg', 
    'assets/image2.jpg', 
    'assets/image3.jpg', 
  ];

  List<bool> isStarredList = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'HOME',
            style: TextStyle(
              color: Color(0xFF1E2831),
            ),
          ),
        ),
        backgroundColor: Color(0xFFF5F5F5),
        actions: [
          IconButton(
            icon: Icon(
              isStarredList.any((starred) => starred)
                  ? Icons.star
                  : Icons.star_border,
              color: Colors.amber,
            ),
            onPressed: () {
              setState(() {
                 
                isStarredList = List.generate(5, (index) => !isStarredList[0]);
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF1E2831),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 367,
              height: 250,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 250,
                  aspectRatio: 367 / 250,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                items: images.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 367,
                        height: 250,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SecondScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                            imagePath,
                            width: 367,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 391,
                  height: 182,
                  child: Image.asset(
                    'assets/leftimage.png',
                    width: 391,
                    height: 182,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 342,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                hintText: 'Search Country',
                suffixIcon: Icon(Icons.search),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.text,
            ),
          ),
          Column(
            children: <Widget>[
             
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Text("AF"),
                    title: Text("Afghanistan"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            isStarredList[0]
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              isStarredList[0] = !isStarredList[0];
                            });
                          },
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ),

             
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Text("AL"),
                    title: Text("Albania"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            isStarredList[1]
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              isStarredList[1] = !isStarredList[1];
                            });
                          },
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ),

             
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Text("DZ"),
                    title: Text("Algeria"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            isStarredList[2]
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              isStarredList[2] = !isStarredList[2];
                            });
                          },
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ),

             
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Text("AD"),
                    title: Text("Andorra"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            isStarredList[3]
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              isStarredList[3] = !isStarredList[3];
                            });
                          },
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ),

              
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Text("AO"),
                    title: Text("Angola"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            isStarredList[4]
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              isStarredList[4] = !isStarredList[4];
                            });
                          },
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

       


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 256,
            decoration: BoxDecoration(
              color: Color(0xFF1E2831),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Country Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'INDIA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/your_image.jpg',
                width: 408,
                height: 222,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
              
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
              },
              child: Text('Go to Third Screen'),
            ),
          ),
          Positioned(
            top: 256,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Country Code',
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Capital',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'ISD',
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'IN',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'New Delhi',
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '+91',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}







class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 256,
            decoration: BoxDecoration(
              color: Color(0xFF1E2831),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'City Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'NEW YORK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 286, 
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
