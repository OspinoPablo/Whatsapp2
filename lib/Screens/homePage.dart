import 'package:flutter/material.dart';

class HomeIos extends StatefulWidget {
  const HomeIos({Key? key}) : super(key: key);

  @override
  _HomeIosState createState() => _HomeIosState();
}

class _HomeIosState extends State<HomeIos> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print("hola");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-810x540.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          child: Container(
                                            padding: EdgeInsets.only(left: 20),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            decoration: BoxDecoration(
                                                color: Color(0x44000000)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Contact $index',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.022),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.chat_outlined),
                                          color: Color(0xff28a85f),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.phone_outlined),
                                          color: Color(0xff28a85f),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.videocam_outlined),
                                          color: Color(0xff28a85f),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.info_outlined),
                                          color: Color(0xff28a85f),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              backgroundColor: Colors.white);
                        },
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-810x540.jpg'),
                      radius: 24,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contacto $index',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Hola! Soy el contacto $index',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '12:30 PM',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
    Container(
        child: Container(
      width: 800,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.green)),
            padding: EdgeInsets.only(left: 10),
            width: 800,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Status'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xff222222),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            decoration:
                BoxDecoration(border: Border.all(width: 2, color: Colors.red)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 62,
                            height: 62,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-810x540.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(border: Border.all(width: 2)),
    )),
    Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 360,
                  height: 100,
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12, bottom: 12),
                            width: 60,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                color: Color(0xffb4b4b4),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.groups_2,
                                  size: 38,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 13,
                            right: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xff616161),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  ];

  final List<AppBar> _appBars = [
    AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Container(
          color: Color(0xffe7e7e7),
          height: 1.0,
        ),
      ),
      backgroundColor: Color(0xffffffff),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'WhatsApp',
            style: TextStyle(
                color: Color(0xff28a85f),
                fontSize: 24,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
      actions: [
        Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xff222222),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color(0xff222222),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Color(0xff222222),
                ),
              )
            ],
          ),
        )
      ],
    ),
    AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Container(
          color: Color(0xffe7e7e7),
          height: 1.0,
        ),
      ),
      backgroundColor: Color(0xffffffff),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Updates',
            style: TextStyle(
                color: Color(0xff222222),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
      actions: [
        Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xff222222),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color(0xff222222),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Color(0xff222222),
                ),
              )
            ],
          ),
        )
      ],
    ),
    AppBar(
      title: Text('AppBar 3'),
    ),
  ];

  List<Widget> _floatingActionButtons = [
    FloatingActionButton(
        backgroundColor: Color(0xff28a85f),
        onPressed: () {},
        child: Icon(Icons.add_comment_sharp, color: Colors.white)),
    FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.radar),
    ),
    FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.groups_2),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBars[_currentIndex],
        floatingActionButton: _floatingActionButtons[_currentIndex],
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.035,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _currentIndex == 0
                      ? Color(0x7905f66d)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.chat,
                  size: MediaQuery.of(context).size.height * 0.02,
                  color: _currentIndex == 0 ? Color(0xff168144) : Colors.black,
                ),
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radar),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_2),
              label: 'Communities',
            ),
          ],
        ),
      ),
    );
  }
}
