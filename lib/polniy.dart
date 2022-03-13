import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    var size=mediaQueryData.size;
    var orientation=mediaQueryData.orientation;
    return Scaffold(
        body: orientation==Orientation.portrait ? forPortrait(size):forLAndscape(size),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,

        items:const <Widget>[
          Icon(Icons.home_outlined, size: 30,),
          Icon(Icons.favorite_outline, size: 30),
          Icon(Icons.local_grocery_store_outlined, size: 30),
          Icon(Icons.chat_outlined, size: 30),
          Icon(Icons.person_outline, size: 30),
        ],
        onTap: (index) {
          // setState(() {
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=> NextPage() ));
          // });
        },
      ),
    );
  }
  Widget forPortrait(size){
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context,int index) {
          return SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Container(
                            width: 40,
                            height: 60,
                            child: Image.asset('images/burger .png')),

                        Column(
                          children: [
                            Text(''),
                            Text('Need Food', style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        SizedBox(width: 120,),
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.search_outlined,
                            size: 18.0,
                          ),
                          padding: EdgeInsets.all(10.0),
                          shape: CircleBorder(),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/row-banner 1.png')
                          )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 14, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Packet Cheese',
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 8,),
                            Text('Burger Complite',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.zero,
                              width: 90,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red,
                              ),
                              child: Center(child: Text('Order Now',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),)),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(14),
                    child: Column(
                      children: [
                        Text('Categories',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 20, left: 20, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Rectangle 3.png',),
                              )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Container(
                                  width: 60,
                                  height: 50,
                                  child: Image.asset('images/menu-1 1.png')),
                              Text('Burger')
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Rectangle 3.png',),
                              )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 16,),
                              Container(
                                  width: 60,
                                  height: 46,
                                  child: Image.asset('images/cat-6 1.png')),
                              Text('Drink')
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Rectangle 3.png',),
                              )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                  width: 50,
                                  height: 40,
                                  child: Image.asset('images/food-8 1.png')),
                              Text('Pizza')
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 1, left: 14),
                    child: Column(
                      children: [
                        Text('Popular Now',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  Row(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/food-2 1.png'),
                                              ),
                                              Text('Beef Burger',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Mcdi',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.20.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/cat-2 1.png'),
                                              ),
                                              Text('Pizza fruit',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Pijja hut',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.40.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/cat-6 1.png'),
                                              ),
                                              Text('Beef Burger',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Mcdi',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.20.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/food-2 1.png'),
                                              ),
                                              Text('Beef Burger',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Mcdi',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.20.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 1, left: 14),
                    child: Column(
                      children: [
                        Text('Recomended',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  Row(
                                    children: [
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),



                                    ],
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ]
            ),
          );
        });
  }
  Widget forLAndscape(size){
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context,int index) {
          return SafeArea(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: double.infinity,

                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Container(
                            width: 40,
                            height: 60,
                            child: Image.asset('images/burger .png')),

                        Column(
                          children: [
                            Text(''),
                            Text('Need Food', style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        SizedBox(width: 120,),
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.search_outlined,
                            size: 18.0,
                          ),
                          padding: EdgeInsets.all(10.0),
                          shape: CircleBorder(),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: double.infinity,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/row-banner 1.png')
                          )
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 14, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Packet Cheese',
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 8,),
                            Text('Burger Complite',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.zero,
                              width: 90,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red,
                              ),
                              child: Center(child: Text('Order Now',
                                style: TextStyle(fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),)),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(14),
                    child: Column(
                      children: [
                        Text('Categories',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      right: 20, left: 20, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Rectangle 3.png',),
                              )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Container(
                                  width: 60,
                                  height: 50,
                                  child: Image.asset('images/menu-1 1.png')),
                              Text('Burger')
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Rectangle 3.png',),
                              )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 16,),
                              Container(
                                  width: 60,
                                  height: 46,
                                  child: Image.asset('images/cat-6 1.png')),
                              Text('Drink')
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/Rectangle 3.png',),
                              )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                  width: 50,
                                  height: 40,
                                  child: Image.asset('images/food-8 1.png')),
                              Text('Pizza')
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 1, left: 14),
                    child: Column(
                      children: [
                        Text('Popular Now',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  Row(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/food-2 1.png'),
                                              ),
                                              Text('Beef Burger',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Mcdi',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.20.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/cat-2 1.png'),
                                              ),
                                              Text('Pizza fruit',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Pijja hut',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.40.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/cat-6 1.png'),
                                              ),
                                              Text('Beef Burger',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Mcdi',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.20.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        width: 140,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'images/Rectangle 5.png')
                                              )
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 90,
                                                child: Image.asset(
                                                    'images/food-2 1.png'),
                                              ),
                                              Text('Beef Burger',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Center(child: Text('Mcdi',
                                                style: TextStyle(
                                                    color: Colors.grey),),),
                                              Text('Rp.20.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 1, left: 14),
                    child: Column(
                      children: [
                        Text('Recomended',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  Row(
                                    children: [
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),
                                      Container(
                                          height: 150,
                                          width: 140,
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'images/blog-1 1.png')
                                                )
                                            ),
                                          )
                                      ),



                                    ],
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                ]
            ),
          );
        });
  }
}
