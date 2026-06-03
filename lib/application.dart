import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: TabView(),
    ),
  );
}

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  bool isHouse = true;
  bool isOutside = true;
  bool isClass = true;
  bool isWeekend = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAppBarChildren(),
              const SizedBox(height: 15,),
              _buildText(),
              const SizedBox(height: 30,),
              isWeekend
                  ? _buildWeekendFood()
                  : _onTapWeekend(),
              const SizedBox(height: 25,),
              isClass
                  ? _buildClass()
                  : _onTapClass(),
              const SizedBox(height: 25,),
              isOutside
                  ? _buildOutside()
                  : _onTapOutside(),
              const SizedBox(height: 25,),
              isHouse
                  ? _buildGoingHome()
                  : _onTapGoingHome(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBarChildren() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(width: 24),
            Image.asset('assets/pick_logo.jpg', width: 65, height: 65),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.sunny, size: 30),
            SizedBox(width: 20),
          ],
        ),
      ],
    );
  }

  Widget _buildText() {
    return const Row(
      children: [
        SizedBox(width: 24,),
        Text('신청', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),)
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedItemColor: const Color(0xFF7F4DFF),
      unselectedItemColor: Colors.blueGrey,
      currentIndex: 2,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), label: '홈'),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant, color: Colors.black), label: '급식'),
        BottomNavigationBarItem(
            icon: Icon(Icons.check_circle, color: Color(0xFF7F4DFF)),
            label: '신청'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: Colors.black), label: '일정'),
        BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.black), label: '전체'),
      ],
    );
  }

  Widget _buildWeekendFood() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(isClass==false||isOutside==false||isHouse==false) {
            isHouse=true;
            isOutside=true;
            isClass=true;
          }
          isWeekend = !isWeekend;
        });
      },
        child: Container(
          width: 355,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 0.2,
              )
            ],
          ),
          child: const Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.restaurant, size: 30,
                color: Color.fromRGBO(80, 80, 80, 0.8),),
              SizedBox(width: 20,),
              Text('주말 급식 신청',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
    );

  }

  Widget _buildClass() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(isWeekend==false||isOutside==false||isHouse==false) {
            isHouse=true;
            isOutside=true;
            isWeekend=true;
          }
          isClass = !isClass;
        });
      },
        child: Container(
          width: 355,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 0.2,
              )
            ],
          ),
          child: const Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.people_alt, size: 30,
                color: Color.fromRGBO(80, 80, 80, 0.8),),
              SizedBox(width: 20,),
              Text('교실 이동 신청',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
            ],
          ),
        )
    );
  }

  Widget _buildOutside() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(isClass==false||isWeekend==false||isHouse==false) {
            isHouse=true;
            isWeekend=true;
            isClass=true;
          }
          isOutside = !isOutside;
        });
      },
        child: Container(
          width: 355,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 0.2,
              )
            ],
          ),
          child: const Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.check_circle, size: 30,
                color: Color.fromRGBO(80, 80, 80, 0.8),),
              SizedBox(width: 20,),
              Text('외출 신청',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
    );

  }

  Widget _buildGoingHome() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(isClass==false||isOutside==false||isWeekend==false) {
            isWeekend=true;
            isOutside=true;
            isClass=true;
          }
          isHouse = !isHouse;
        });
      },
      child: Container(
        width: 355,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 0.2,
            )
          ],
        ),
        child: const Row(
          children: [
            SizedBox(width: 20,),
            Icon(Icons.motorcycle_outlined, size: 30,
              color: Color.fromRGBO(80, 80, 80, 0.8),),
            SizedBox(width: 20,),
            Text('조기 귀가 신청',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  Widget _onTapGoingHome() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isHouse = !isHouse;
        });
      },
      child: Container(
        width: 355,
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7F4DFF),
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7F4DFF).withOpacity(0.3),
              spreadRadius: 0.7,
              blurRadius: 0.2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 13),
                    child: Icon(Icons.motorcycle_outlined, size: 35,
                      color: Color.fromRGBO(80, 80, 80, 0.8),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 18, left: 20),
                    child: Text('조기 귀가 신청', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),),
                  ),
                ]
            ),
            SizedBox(height: 5),
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text('선생님께 미리 수락을 받은 뒤 신청합니다.', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))
                ]
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                  width: 315,
                  height: 36,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('신청하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                      )
                    ]
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _onTapOutside() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOutside = !isOutside;
        });
      },
      child: Container(
        width: 355,
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7F4DFF),
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7F4DFF).withOpacity(0.3),
              spreadRadius: 0.7,
              blurRadius: 0.2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 13),
                    child: Icon(Icons.check_circle, size: 35,
                      color: Color.fromRGBO(80, 80, 80, 0.8),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 18, left: 20),
                    child: Text('외출 신청', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),),
                  ),
                ]
            ),
            SizedBox(height: 5),
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text('선생님께 미리 수락을 받은 뒤 신청합니다.', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))
                ]
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                    width: 315,
                    height: 36,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('신청하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                          )
                        ]
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _onTapClass() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClass = !isClass;
        });
      },
      child: Container(
        width: 355,
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7F4DFF),
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7F4DFF).withOpacity(0.3),
              spreadRadius: 0.7,
              blurRadius: 0.2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 13),
                    child: Icon(Icons.people_alt, size: 35,
                      color: Color.fromRGBO(80, 80, 80, 0.8),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 18, left: 20),
                    child: Text('교실 이동 신청', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),),
                  ),
                ]
            ),
            SizedBox(height: 5),
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text('선생님께 미리 수락을 받은 뒤 신청합니다.', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))
                ]
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                    width: 315,
                    height: 36,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('신청하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                          )
                        ]
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _onTapWeekend() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isWeekend = !isWeekend;
        });
      },
      child: Container(
        width: 355,
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7F4DFF),
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7F4DFF).withOpacity(0.3),
              spreadRadius: 0.7,
              blurRadius: 0.2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, top: 13),
                    child: Icon(Icons.restaurant, size: 35,
                      color: Color.fromRGBO(80, 80, 80, 0.8),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 18, left: 20),
                    child: Text('주말 급식 신청', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),),
                  ),
                ]
            ),
            SizedBox(height: 5),
            Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text('선생님께 미리 수락을 받은 뒤 신청합니다.', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))
                ]
            ),
            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                    width: 315,
                    height: 36,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('신청하기', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                          )
                        ]
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
