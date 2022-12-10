import 'package:flutter/material.dart';
import 'constants.dart';
import 'placeholder_data.dart';
import 'ground_page.dart';

class MyBookingPage extends StatelessWidget {
  const MyBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Grounds g = Grounds();

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        toolbarHeight: 85,
        backgroundColor: constant.myGreen,
        elevation: 0,
        actions: [
          Row(children: const [
            Icon(Icons.search),
            SizedBox(width: 10),
            Icon(Icons.settings),
            SizedBox(width: 10),
          ])
        ],
        title: const Text('Grounds'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DateBox(selected: false, date: 3),
                  DateBox(selected: false, date: 4),
                  DateBox(selected: true, date: 5),
                  DateBox(selected: false, date: 6),
                  DateBox(selected: false, date: 7),
                  DateBox(selected: false, date: 8),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on, color: constant.myGreen),
                Text('Maharashtra, India',
                    textScaleFactor: 1.2,
                    style: TextStyle(color: constant.myGreen)),
                const Expanded(child: SizedBox()),
                Text('Change >', style: TextStyle(color: constant.myGreen))
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: g.myGrounds.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GroundPage(g.myGrounds[i]),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: constant.myGreen.withOpacity(0.08),
                                blurRadius: 5,
                                offset: const Offset(2, 2))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Image.asset(
                                  g.myGrounds[i].image,
                                  height: 120,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 16, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('20 Over',
                                          textScaleFactor: 1.1,
                                          style: TextStyle(
                                              color: constant.textDark)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: constant.myGreen,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              child: Text(
                                                '10:00 am',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              child: Text(
                                                '01:00 pm',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: constant.myGreen,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              child: Text(
                                                '04:00 pm',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Text('30 Over',
                                          textScaleFactor: 1.1,
                                          style: TextStyle(
                                              color: constant.textDark)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              child: Text(
                                                '01:00 pm',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.orange),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              child: Text(
                                                '04:00 pm',
                                                style: TextStyle(
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                              child: Text('00:00 pm',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              g.myGrounds[i].name,
                              textScaleFactor: 1.5,
                              style: TextStyle(color: constant.textDark),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                const Icon(Icons.location_on_outlined,
                                    color: Colors.grey),
                                Text(
                                  g.myGrounds[i].location,
                                  style: const TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                            child: Row(
                              children: [
                                Text(
                                  'Pitch Type : Mat',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(color: constant.textDark),
                                ),
                                const Expanded(child: SizedBox()),
                                Icon(Icons.north_east_rounded,
                                    color: constant.myGreen),
                                Text(g.myGrounds[i].distance,
                                    textScaleFactor: 1.1,
                                    style: TextStyle(color: constant.myGreen))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  DateBox({Key? key, required this.selected, required this.date})
      : super(key: key);

  bool selected;
  int date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          color: constant.myGreen.withOpacity(selected ? 1 : 0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Jan',
                  style: TextStyle(
                      color: selected ? Colors.white : constant.textDark),
                  textScaleFactor: 1.1),
              Text('0$date',
                  style: TextStyle(
                      color: selected ? Colors.white : constant.textDark),
                  textScaleFactor: 2),
              Text('Tue',
                  style: TextStyle(
                      color: selected ? Colors.white : constant.textDark),
                  textScaleFactor: 1.1)
            ],
          ),
        ),
      ),
    );
  }
}
