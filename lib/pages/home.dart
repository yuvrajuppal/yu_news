import 'package:flutter/material.dart';
import 'package:yu_news/models/category_models.dart';
import 'package:yu_news/services/data.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<CategoryModel> category = [];
  @override
  void initState() {
    category = getcategories();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 255, 255, 255),
      body: Container(
        margin: EdgeInsets.only(top: 55, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Yu",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "News",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ],
              
            ),
            SizedBox(height: 20),
            Text(
              "Hottest News",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),

            // ----------------Hot news list views -------------------
            Container(
              height: MediaQuery.of(context).size.height/2.6,
              child: ListView(
                scrollDirection:  Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Container(
                        
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'images/demonews.jpg',
                                  
                                  width: MediaQuery.of(context).size.width / 1.8,
                                  
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                "Tech Giant Unveils AI-Powered Smartphone..",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              padding: EdgeInsets.only(left: 5, right: 5),
                                  
                              child: Text(
                                "In a groundbreaking move, a leading tech company has ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 95, 95, 95),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 40,
                                    margin: EdgeInsets.only(right: 0),
                                  
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                  SizedBox(width: 15,),
                    

                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Container(
                        
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'images/demonews.jpg',
                                  
                                  width: MediaQuery.of(context).size.width / 1.8,
                                  
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                "Tech Giant Unveils AI-Powered Smartphone..",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              padding: EdgeInsets.only(left: 5, right: 5),
                                  
                              child: Text(
                                "In a groundbreaking move, a leading tech company has ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 95, 95, 95),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 40,
                                    margin: EdgeInsets.only(right: 0),
                                  
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
