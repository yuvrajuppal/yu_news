import 'package:flutter/material.dart';
import 'package:yu_news/models/article_model.dart';
import 'package:yu_news/models/category_models.dart';
import 'package:yu_news/pages/artivle_view.dart';
import 'package:yu_news/pages/category_news.dart';
import 'package:yu_news/services/data.dart';
import 'package:yu_news/services/news.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<CategoryModel> category = [];
  List<ArticalModel> articles =[];
  bool loading  = true;

  @override
  void initState() {
    category = getcategories();
    getNews();
    // TODO: implement initState
    super.initState();
  }



  getNews()async{
    News newsclass  =  News();
    await newsclass.getnews();
    articles = newsclass.news;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
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
                height: MediaQuery.of(context).size.height / 2.6,
                child: ListView.builder(
                  shrinkWrap:  true,
                  physics: ClampingScrollPhysics(),
                  itemCount: articles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) { 
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(blogurl: articles[index].weburl!)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5, right: 10.0),
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
                                    child: Image.network(
                                      articles[index].urlToImage!,
                      
                                      width:
                                          MediaQuery.of(context).size.width / 1.8,
                      
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
                                    maxLines: 2,
                                    articles[index].title!,
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
                                    maxLines: 2,
                                    articles[index].description!,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 95, 95, 95),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
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
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
        
                   },
                  // children: [
                   
                  //   SizedBox(width: 15),
        
                  //   Container(
                  //     margin: EdgeInsets.only(bottom: 5),
                  //     child: Material(
                  //       elevation: 4.0,
                  //       borderRadius: BorderRadius.only(
                  //         topLeft: Radius.circular(15),
                  //         topRight: Radius.circular(15),
                  //         bottomLeft: Radius.circular(15),
                  //       ),
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(15),
                  //             topRight: Radius.circular(15),
                  //             bottomLeft: Radius.circular(15),
                  //           ),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               width: MediaQuery.of(context).size.width / 1.8,
                  //               padding: EdgeInsets.all(10),
                  //               child: ClipRRect(
                  //                 borderRadius: BorderRadius.circular(15),
                  //                 child: Image.asset(
                  //                   'images/demonews.jpg',
        
                  //                   width:
                  //                       MediaQuery.of(context).size.width / 1.8,
        
                  //                   height: 150,
                  //                   fit: BoxFit.cover,
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 10),
                  //             Container(
                  //               width: MediaQuery.of(context).size.width / 1.8,
                  //               padding: EdgeInsets.only(left: 5, right: 5),
                  //               child: Text(
                  //                 "Tech Giant Unveils AI-Powered Smartphone..",
                  //                 style: TextStyle(
                  //                   color: const Color.fromARGB(255, 0, 0, 0),
                  //                   fontSize: 19.0,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8),
                  //             Container(
                  //               width: MediaQuery.of(context).size.width / 1.8,
                  //               padding: EdgeInsets.only(left: 5, right: 5),
        
                  //               child: Text(
                  //                 "In a groundbreaking move, a leading tech company has ",
                  //                 style: TextStyle(
                  //                   color: const Color.fromARGB(255, 95, 95, 95),
                  //                   fontSize: 15.0,
                  //                   fontWeight: FontWeight.bold,
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 10),
                  //             Spacer(),
                  //             Container(
                  //               padding: EdgeInsets.all(0),
                  //               width: MediaQuery.of(context).size.width / 1.8,
                  //               child: Row(
                  //                 mainAxisAlignment: MainAxisAlignment.end,
                  //                 crossAxisAlignment: CrossAxisAlignment.end,
                  //                 children: [
                  //                   Container(
                  //                     width: 80,
                  //                     height: 40,
                  //                     margin: EdgeInsets.only(right: 0),
        
                  //                     decoration: BoxDecoration(
                  //                       color: Colors.blue,
                  //                       borderRadius: BorderRadius.only(
                  //                         topLeft: Radius.circular(20),
                  //                       ),
                  //                     ),
                  //                     child: Icon(
                  //                       Icons.arrow_forward,
                  //                       color: Colors.white,
                  //                       size: 30,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Explore",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return categoryTile(
                      categoryname: category[index].Categoryname,
                      image: category[index].image,
                    );
                  },
                ),
              ),
        
              SizedBox(height: 10),
        
              Text(
                "Trending News",
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
        
                Container(
                // height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                      padding: EdgeInsets.zero, 
                      
                  shrinkWrap:  true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: articles.length,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) { 
                    return  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(blogurl: articles[index].weburl!)));
                      },
                      child:       Container(
                margin: EdgeInsets.only( bottom: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                  
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.network(
                        articles[index].urlToImage!,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                                width: MediaQuery.of(context).size.width / 1.8,
                                padding: EdgeInsets.only(left: 5, right: 5,),
                                child: Text(
                                  articles[index].title!,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.8,
                                padding: EdgeInsets.only(left: 5, right: 5),
        
                                child: Text(
                                  articles[index].description!,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 95, 95, 95),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ],
                    )
                  ],
                ),
              ),
        );
        
                   },
              
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

class categoryTile extends StatelessWidget {
  final image, categoryname;
  categoryTile({required this.categoryname, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(name: categoryname)));
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            Container(
              width: 120,
              height: 120,
              child: Center(
                child: Text(
                  categoryname,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
