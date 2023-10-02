import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReservationTicket extends StatelessWidget {
  const ReservationTicket({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Frame2473Widget - FRAME
    return SingleChildScrollView(
      child: Center(
        child: Container(
            height: 2287,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: Color.fromRGBO(250, 250, 250, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 12,
                  left: 161,
                  child: Container(
                      width: 53,
                      height: 6,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ))),
              Positioned(
                  top: 14,
                  left: 330.02734375,
                  child: SizedBox(
                      width: 20.945940017700195,
                      height: 4.189184665679932,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 4.189184665679932,
                                height: 4.189184665679932,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(4.189184665679932,
                                          4.189184665679932)),
                                ))),
                        Positioned(
                            top: 0,
                            left: 8.3779296875,
                            child: Container(
                                width: 4.189184665679932,
                                height: 4.189184665679932,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(4.189184665679932,
                                          4.189184665679932)),
                                ))),
                        Positioned(
                            top: 0,
                            left: 16.756755828857422,
                            child: Container(
                                width: 4.189184665679932,
                                height: 4.189184665679932,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(4.189184665679932,
                                          4.189184665679932)),
                                ))),
                      ]))),
              Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Container(
                      width: 375,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Rectangle138.png'),
                            fit: BoxFit.fitWidth),
                      ))),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      width: 375,
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: Color.fromRGBO(147, 143, 147, 1),
                      ))),
              Positioned(
                  top: 11,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                        width: 53,
                        height: 6,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )),
                  )),
              Positioned(
                  top: 360,
                  left: 25,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Hotel Check-in',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 24,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'World Cup Match',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'From',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            'Jan 01, 2022',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 76),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Till',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            'Jan 01, 2022',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          SizedBox(
                                              width: 103,
                                              height: 45,
                                              child: Stack(children: <Widget>[
                                                const Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Text(
                                                      'Stars',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontSize: 18,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height:
                                                              1.5 /*PERCENT not supported*/
                                                          ),
                                                    )),
                                                Positioned(
                                                  top: 27,
                                                  left: 0,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                                Positioned(
                                                  top: 27,
                                                  left: 21,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                                Positioned(
                                                  top: 27,
                                                  left: 43,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                                Positioned(
                                                  top: 27,
                                                  left: 64,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                                Positioned(
                                                  top: 27,
                                                  left: 85,
                                                  child: SvgPicture.asset(
                                                      'assets/images/vector.svg',
                                                      semanticsLabel: 'vector'),
                                                ),
                                              ])),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 17),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Room Count',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                ),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '5 ',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                            width: 325,
                            height: 136.8173828125,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 26.8173828125,
                                  left: 0,
                                  child: Container(
                                      width: 325,
                                      height: 110,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 325,
                                                height: 110,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      232, 232, 232, 1),
                                                ))),
                                        const Positioned(
                                            top: 15,
                                            left: 14,
                                            child: Text(
                                              'Marriot Qatar Hotel',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height:
                                                      1.5 /*PERCENT not supported*/
                                                  ),
                                            )),
                                        const Positioned(
                                            top: 47,
                                            left: 14,
                                            child: Text(
                                              'Address: Museum Park St, Doha, Qatar',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height:
                                                      1.5 /*PERCENT not supported*/
                                                  ),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 225,
                                            child: Container(
                                                width: 100,
                                                height: 110,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/Rectangle83.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        const Positioned(
                                            top: 45,
                                            left: 270,
                                            child: SizedBox.shrink()),
                                      ]))),
                              const Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Location:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ])),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text(
                                'Tickets:',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                  width: 325,
                                  height: 150,
                                  decoration: const BoxDecoration(),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 325,
                                            height: 150,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  232, 232, 232, 1),
                                            ))),
                                    Positioned(
                                        top: 20.485107421875,
                                        left: 14,
                                        child: Container(
                                            width: 33.999778747558594,
                                            height: 33.99974060058594,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                width: 1,
                                              ),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Ellipse8.png'),
                                                  fit: BoxFit.fitWidth),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.elliptical(
                                                          33.999778747558594,
                                                          33.99974060058594)),
                                            ))),
                                    Positioned(
                                        top: 14,
                                        left: 60,
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          child: const Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                'Marilyn Bridges James',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 18,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                '#170122708123',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        83, 83, 83, 1),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 15,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.3333333333333333),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Positioned(
                                        top: 91,
                                        left: 14,
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                'Ticket Type:',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 15,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'MATCH Business Seat ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        83, 83, 83, 1),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 15,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.3333333333333333),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Positioned(
                                        top: 117,
                                        left: 14,
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                'Seat:',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 15,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height:
                                                        1.5 /*PERCENT not supported*/
                                                    ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Block 112 / Row S / Seat 1',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        83, 83, 83, 1),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontSize: 15,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.3333333333333333),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Positioned(
                                      top: 75,
                                      left: 1.5,
                                      child: SvgPicture.asset(
                                          'assets/images/vector279.svg',
                                          semanticsLabel: 'vector279'),
                                    ),
                                    Positioned(
                                        top: 67.485107421875,
                                        left: 318,
                                        child: Container(
                                            width: 14,
                                            height: 14,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  250, 250, 250, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(14, 14)),
                                            ))),
                                    Positioned(
                                        top: 67.485107421875,
                                        left: -7,
                                        child: Container(
                                            width: 14,
                                            height: 14,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  250, 250, 250, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(14, 14)),
                                            ))),
                                  ])),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SvgPicture.asset('assets/images/vector223.svg',
                                  semanticsLabel: 'vector223'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text(
                                'Room Reservation 01',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                              const SizedBox(height: 35),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text(
                                      'Guest(s):',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 18,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                              width: 30.00026512145996,
                                              height: 30.00023078918457,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/Ellipse9.png'),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        30.00026512145996,
                                                        30.00023078918457)),
                                              )),
                                          const SizedBox(width: 6),
                                          const Text(
                                            'Amanda Briggs',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    83, 83, 83, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                              width: 30.00026512145996,
                                              height: 30.00023078918457,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/Ellipse9.png'),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        30.00026512145996,
                                                        30.00023078918457)),
                                              )),
                                          const SizedBox(width: 6),
                                          const Text(
                                            'Amanda Briggs',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    83, 83, 83, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 35),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Room Type',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          SizedBox(height: 4.514925479888916),
                                          Text(
                                            'Presedential Wing',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 35),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Room Number',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '52',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 17),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Text(
                                            'Sleeps',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          const SizedBox(height: 6),
                                          Container(
                                            decoration: const BoxDecoration(),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 0),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  '5',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontSize: 15,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height:
                                                          1.3333333333333333),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SvgPicture.asset('assets/images/vector223.svg',
                                  semanticsLabel: 'vector223'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text(
                                'Room Reservation 01',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                              const SizedBox(height: 35),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text(
                                      'Guest(s):',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 18,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                              width: 30.00026512145996,
                                              height: 30.00023078918457,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/Ellipse9.png'),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        30.00026512145996,
                                                        30.00023078918457)),
                                              )),
                                          const SizedBox(width: 6),
                                          const Text(
                                            'Amanda Briggs',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    83, 83, 83, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                              width: 30.00026512145996,
                                              height: 30.00023078918457,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/Ellipse9.png'),
                                                    fit: BoxFit.fitWidth),
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        30.00026512145996,
                                                        30.00023078918457)),
                                              )),
                                          const SizedBox(width: 6),
                                          const Text(
                                            'Amanda Briggs',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    83, 83, 83, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 35),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Room Type',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          SizedBox(height: 4.514925479888916),
                                          Text(
                                            'Presedential Wing',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 35),
                              Container(
                                decoration: const BoxDecoration(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Room Number',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '52',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 15,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3333333333333333),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 17),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Text(
                                            'Sleeps',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                          const SizedBox(height: 6),
                                          Container(
                                            decoration: const BoxDecoration(),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 0),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  '5',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontSize: 15,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height:
                                                          1.3333333333333333),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SvgPicture.asset('assets/images/vector223.svg',
                                  semanticsLabel: 'vector223'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text(
                                'Gallery:',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                  width: 930,
                                  height: 225,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                                  width: 150,
                                                  height: 225,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Rectangle36.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                              const SizedBox(width: 6),
                                              Container(
                                                  width: 150,
                                                  height: 225,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Rectangle37.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                              const SizedBox(width: 6),
                                              Container(
                                                  width: 150,
                                                  height: 225,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Rectangle38.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                              const SizedBox(width: 6),
                                              Container(
                                                  width: 150,
                                                  height: 225,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Rectangle39.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                              const SizedBox(width: 6),
                                              Container(
                                                  width: 150,
                                                  height: 225,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Rectangle40.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                              const SizedBox(width: 6),
                                              Container(
                                                  width: 150,
                                                  height: 225,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Rectangle41.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                            ],
                                          ),
                                        )),
                                  ])),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        const SizedBox(
                            width: 325,
                            height: 47,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Amenities',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 26,
                                  left: 0,
                                  child: Text(
                                    'Swiming pool, Contenental breakfast, Spa',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                        ),
                                  )),
                            ])),
                      ],
                    ),
                  )),
            ])),
      ),
    );
  }
}
