import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
    int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:80, left:30 , right:30),
          child: Column(
            children: [
            const Padding(
              padding: EdgeInsets.only(top:8.0,right:8.0,left:8.0,bottom:20),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Hello,',style:TextStyle(color:Color(0xFF8696BB),fontSize: 16 , fontWeight: FontWeight.w400)),
                  Text('Hi James',style:TextStyle(color:Color(0xFF0D1B34),fontSize: 20 , fontWeight: FontWeight.bold)),
                ],),
                CircleAvatar(radius: 30,),
              ],),
            ),
            const SizedBox(height: 16,),
            Container(
              decoration:const BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(12)),
                color:Color(0xFF4894FE)
              ),
              child:const Padding(
                padding: EdgeInsets.only(top:20.0,bottom:20.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(                            
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 27
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dr.Imran Syahir',style:TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text('General Doctor',style:TextStyle(color:Color(0xFFCBE1FF),fontSize: 14,fontWeight: FontWeight.w400)),
                            ],
                          )
                        ],),
                        Icon(Icons.arrow_forward_ios,color: Colors.white)
                    ],
                  ),
                  Divider(
                  height:40,
                  color:Colors.white,
                  thickness: 0,
                  indent: 30,
                  endIndent: 30,
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_sharp,
                        color:Colors.white),
                          SizedBox(width: 7),
                        Text('Sunday, 12 June',
                        style:TextStyle(
                      color:Colors.white,
                      fontSize: 12 ,
                      fontWeight: FontWeight.w500
                    ))]),
                    Row(
                      children: [
                    Icon(Icons.access_time,
                    color:Colors.white,
                    ),
                      SizedBox(width: 7),
                      Text('11:00 - 12:00 AM',
                      style:TextStyle(
                      color:Colors.white,
                      fontSize: 12 ,
                      fontWeight: FontWeight.w400                    
                      ))],),
                  ],)
                  ]),
              )
            ),
            const SizedBox(height: 20),
            TextField(
              cursorColor: const Color.fromARGB(141, 62, 62, 62),
              decoration:InputDecoration(
                enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder:const OutlineInputBorder(
                  borderSide: BorderSide(
                  color:Color.fromARGB(90, 60, 60, 60),
                  width:1,
                  ),
                  borderRadius:BorderRadius.all(Radius.circular(14))
                ),
                label:const SizedBox(
                  width: 280,
                  child: Row(
                    children:[
                      Icon(
                        Icons.search,
                        size: 32,
                        color: Color.fromARGB(141, 62, 62, 62)
                        ),
                        SizedBox(width:10),
                        Text(
                              'Search doctor or health issue',
                              style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.w700)
                              )],),
                ),
                labelStyle:const TextStyle(color: Color.fromARGB(141, 62, 62, 62)),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(255, 25, 25, 25)),
                  borderRadius: BorderRadius.circular(14),
                  
                )
              ),
            ),
            const SizedBox(height: 24,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(29, 157, 157, 157),
                      radius: 42,
                      child:Icon(
                        Icons.coronavirus_outlined,
                        color:Color(0xFF4894FE),
                        size:36
                        ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Covid 19',
                      style:TextStyle(
                        color: Color.fromARGB(185, 51, 51, 51),
                        fontSize: 17,
                        fontWeight:FontWeight.w400
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(29, 157, 157, 157),
                      radius: 42,
                      child:Icon(
                        Icons.do_not_touch_outlined,
                        color:Color(0xFF4894FE),
                        size:36
                        )
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Doctor',
                      style:TextStyle(
                        color: Color.fromARGB(185, 51, 51, 51),
                        fontSize: 17,
                        fontWeight:FontWeight.w400
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(29, 157, 157, 157),
                      radius: 42,
                      child:Icon(
                        Icons.medication_liquid_outlined,
                        color:Color(0xFF4894FE),
                        size:36
                        )
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Medicine',
                    style:TextStyle(
                      color: Color.fromARGB(185, 51, 51, 51),
                      fontSize: 17,
                      fontWeight:FontWeight.w400
                      )
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(29, 157, 157, 157),
                      radius: 42,
                      child: Icon(
                        Icons.home_work_sharp,
                        color:Color(0xFF4894FE),
                        size:36
                        )
                      ),
                      SizedBox(height: 10),
                    Text(
                      'Hospital',
                    style:TextStyle(
                      color: Color.fromARGB(185, 51, 51, 51),
                      fontSize: 17,
                      fontWeight:FontWeight.w400
                      )
                    )
                  ],
                ),
            ],),
            const SizedBox(height: 28,),
            Column(
              children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Near Doctor',
                style:TextStyle(
                  color:Colors.black,
                fontSize:19,
                fontWeight: FontWeight.w700
                )),
              ],
            ),
            const SizedBox(height: 16,),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              width: 370,// لو شيلتها الكونتينر كله هيصغر
              decoration:const BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(12)),
              ),
              child:const Padding(
                padding: EdgeInsets.only(top:20.0,bottom:20.0),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(                            
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 27
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dr.Joseph Brostito',style:TextStyle(color:Color(0xFF0D1B34),fontSize: 16,fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text('General Doctor',style:TextStyle(color:Color(0XFF8696BB),fontSize: 14,fontWeight: FontWeight.w400)),
                            ],
                          )
                        ],),
                        Row(
                          children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF8696BB)
                        ),
                        SizedBox(width:4),
                        Text(
                          '1.2 KM',
                          style:TextStyle(
                            color:Color(0XFF8696BB),
                          ))
                        ],)
                    ],
                  ),
                  Divider(
                  height:40,
                  color:Colors.white,
                  thickness: 0,
                  indent: 30,
                  endIndent: 30,
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Row(
                      children: [
                    Icon(
                      Icons.access_time,
                      color:Color(0xFFFEB052)
                      ),
                          SizedBox(width: 7),
                        Text('4.8 (120 Reviews)',
                        style:TextStyle(
                      color:Color(0xFFFEB052),
                      fontSize: 12 ,
                      fontWeight: FontWeight.w500
                    ))]),
                    Row(
                      children: [
                    Icon(
                      Icons.access_time,
                      color:Color(0xFF4894FE),
                    ),
                      SizedBox(width: 7),
                      Text('Open at 17:00',
                      style:TextStyle(
                      color:Color(0xFF4894FE),
                      fontSize: 12 ,
                      fontWeight: FontWeight.w400                    
                      ))],),
                  ],)
                  ]),
              )
            ),
            ],)
            ],),
            const SizedBox(
              height: 0
              ),
            const Divider(
              height: 20,
              color:Color.fromARGB(53, 144, 144, 144),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.baseline,
            //   textBaseline: TextBaseline.alphabetic,              
            //   children: [
            //     Container(
            //       decoration:const BoxDecoration(
            //         color: Color.fromARGB(73, 99, 180, 255)
            //       ),
            //       child:const Row(children: [
            //         Icon(
            //           Icons.home_filled,
            //           color: Color.fromARGB(255, 99, 180, 255)

            //         )
            //       ],)
            //     )
            // ],)

          ],),
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle:const TextStyle(
              color:Color(0xFF63B4FF),
            ),
          unselectedLabelStyle:const TextStyle(
              color:Color.fromARGB(255, 120, 255, 99),
            ),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(size: 36),
          unselectedIconTheme: const IconThemeData(size: 36),
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
          items: [
          BottomNavigationBarItem(
            backgroundColor:_selectedIndex == 0
            ?const Color(0xFF63B4FF):const Color.fromARGB(4, 255, 255, 255),
            icon: _selectedIndex == 0
              ? const Icon(
              Icons.home,
              color: Color(0xFF63B4FF),
              )
              : const Icon(
          Icons.home_filled,
          color: Color(0xFF63B4FF),
          ),
              label: 'Home'
              ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
              ? const Icon(
              Icons.calendar_month_rounded,
              color: Color(0xFF63B4FF),
                )
                : const Icon(
              Icons.calendar_month_outlined,
              color: Color(0xFF63B4FF),
                ),
              label: 'Calender'
              ),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
              ? const Icon(
              Icons.message_rounded,
              color: Color(0xFF63B4FF),
              )
              : const Icon(
          Icons.message_outlined,
          color: Color(0xFF63B4FF),
          ),
              label: 'Messages'
              ),

BottomNavigationBarItem(
  icon: _selectedIndex == 3
      ? const Icon(
          Icons.account_circle_rounded,
          color: Color(0xFF63B4FF),
        )
      : const Icon(
          Icons.account_circle_outlined,
          color: Color(0xFF63B4FF),
        ),
  label: 'Account',
)

        ]),
      )
    );
  }
}