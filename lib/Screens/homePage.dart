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
                                          MainAxisAlignment.spaceAround,
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
    Container(),
    Container(
      child: Column(
        children: [],
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
        child: Container(
          width: 30,
          height: 60,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
        )),
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
