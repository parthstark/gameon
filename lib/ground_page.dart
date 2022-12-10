import 'package:flutter/material.dart';
import 'placeholder_data.dart';
import 'constants.dart';

class GroundPage extends StatefulWidget {
  GroundPage(this.myGround, {super.key});
  Ground myGround;
  @override
  State<GroundPage> createState() => _GroundPageState();
}

class _GroundPageState extends State<GroundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        toolbarHeight: 85,
        backgroundColor: constant.myGreen,
        elevation: 0,
        title: const Text('Ground Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.calendar_month, color: constant.myGreen, size: 30),
              Text('Sunday, 21 June 2021',
                  textScaleFactor: 1.75,
                  style: TextStyle(color: constant.textDark))
            ]),
            Padding(
              padding: const EdgeInsets.all(24),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/ground.png')),
            ),
            Row(children: [
              Text(
                widget.myGround.name,
                textScaleFactor: 1.75,
                style: TextStyle(color: constant.textDark),
              ),
            ]),
            const SizedBox(height: 10),
            Row(children: [
              Icon(Icons.location_on_outlined, color: constant.myGreen),
              Text(widget.myGround.location,
                  textScaleFactor: 1.1,
                  style: TextStyle(color: constant.myGreen)),
              const Expanded(child: SizedBox()),
              Text(
                'Pitch Type : Mat',
                textScaleFactor: 1.1,
                style: TextStyle(color: constant.textDark),
              )
            ]),
            const SizedBox(height: 10),
            Row(children: [
              Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: constant.myGreen.withOpacity(0.1)),
                  child: Icon(Icons.restaurant, color: constant.myGreen)),
              Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: constant.myGreen.withOpacity(0.1)),
                  child: Icon(Icons.wash, color: constant.myGreen)),
              const Expanded(child: SizedBox()),
              Container(
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: constant.myGreen.withOpacity(0.1)),
                child: Row(
                  children: [
                    Icon(Icons.north_east, color: constant.myGreen),
                    Text(widget.myGround.distance,
                        textScaleFactor: 1.1,
                        style: TextStyle(color: constant.textDark))
                  ],
                ),
              ),
            ]),
            Expanded(
              child: ListView(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  padding: const EdgeInsets.all(16),
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
                    children: [
                      Row(
                        children: [
                          Text('For 20 Overs',
                              textScaleFactor: 1.1,
                              style: TextStyle(color: constant.textDark)),
                          const Expanded(child: SizedBox()),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: constant.myGreen),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text(
                                '10:00 am',
                                style: TextStyle(color: constant.myGreen),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Team 1',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(color: Colors.grey)),
                              Text('Mumbai Indians',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: constant.textDark)),
                              Container(
                                  margin: const EdgeInsets.all(8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Text('Booked',
                                      textScaleFactor: 1.1))
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Team 2',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(color: Colors.grey)),
                              Text('Available',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: constant.textDark)),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: constant.myGreen.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text('Available',
                                    style: TextStyle(color: constant.myGreen),
                                    textScaleFactor: 1.1),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                      const Divider(),
                      Row(children: [
                        Text(
                          'Ball provided ',
                          style: TextStyle(color: constant.textDark),
                        ),
                        Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(3)),
                            child: Icon(Icons.check,
                                size: 15, color: constant.myGreen)),
                        const Expanded(child: SizedBox()),
                        Text(
                          'Umpire provided ',
                          style: TextStyle(color: constant.textDark),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        const Expanded(child: SizedBox()),
                        Text(
                          'Ball details: ',
                          style: TextStyle(color: constant.textDark),
                        ),
                        Text(
                          'Tennis',
                          style: TextStyle(color: constant.myGreen),
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              children: [
                                Icon(Icons.currency_rupee,
                                    color: constant.myGreen),
                                Text('3000',
                                    textScaleFactor: 1.75,
                                    style: TextStyle(color: constant.myGreen))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                color: constant.myGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text('Book now',
                                style: TextStyle(color: Colors.white),
                                textScaleFactor: 1.75),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  padding: const EdgeInsets.all(16),
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
                    children: [
                      Row(
                        children: [
                          Text('For 30 Overs',
                              textScaleFactor: 1.1,
                              style: TextStyle(color: constant.textDark)),
                          const Expanded(child: SizedBox()),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: constant.myGreen),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text(
                                '02:00 pm',
                                style: TextStyle(color: constant.myGreen),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Team 1',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(color: Colors.grey)),
                              Text('Available',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: constant.textDark)),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: constant.myGreen.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text('Available',
                                    style: TextStyle(color: constant.myGreen),
                                    textScaleFactor: 1.1),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Team 2',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(color: Colors.grey)),
                              Text('Available',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: constant.textDark)),
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                    color: constant.myGreen.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text('Available',
                                    style: TextStyle(color: constant.myGreen),
                                    textScaleFactor: 1.1),
                              )
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                        ],
                      ),
                      const Divider(),
                      Row(children: [
                        Text(
                          'Ball provided ',
                          style: TextStyle(color: constant.textDark),
                        ),
                        Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(3)),
                            child: Icon(Icons.check,
                                size: 15, color: constant.myGreen)),
                        const Expanded(child: SizedBox()),
                        Text(
                          'Umpire provided ',
                          style: TextStyle(color: constant.textDark),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        const Expanded(child: SizedBox()),
                        Text(
                          'Ball details: ',
                          style: TextStyle(color: constant.textDark),
                        ),
                        Text(
                          'Tennis',
                          style: TextStyle(color: constant.myGreen),
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              children: [
                                Icon(Icons.currency_rupee,
                                    color: constant.myGreen),
                                Text('6000',
                                    textScaleFactor: 1.75,
                                    style: TextStyle(color: constant.myGreen))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                color: constant.myGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text('Book now',
                                style: TextStyle(color: Colors.white),
                                textScaleFactor: 1.75),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
