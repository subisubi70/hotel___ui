import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel extends StatelessWidget {
  final String image = "assets/hotel1.jpg";

  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(height: 400, child: Image.asset(image, fit: BoxFit.cover)),
        SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 250,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Crowne Plaza\n Kochi,Kerala ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text('8.4/85 reviews'),
                ),
                Spacer(),
                IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {}),
              ],
            ),
            Material(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.purple,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '₹250',
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 0, left: 20, right: 20, bottom: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('8 km to LuluMall'),
                                      Text(
                                        'Per night',
                                        style: TextStyle(
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.purple,
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 32.0,
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Description'.toUpperCase()),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Crown Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. it is placed amidst exotic surroundings that comprised of blessed with excellent accomadation arrangements in the presence of fully furnished rooms and suites . The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property moreover, the extensive premises of the hotel consist of Excellent arrangement for business and personel events",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: AppBar(
            title: Text(
              'DETAILS',
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
        ),
      ]),
    );
  }
}
