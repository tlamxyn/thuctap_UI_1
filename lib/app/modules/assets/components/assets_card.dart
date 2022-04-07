import 'package:flutter/material.dart';

class AssetsCard extends StatelessWidget {
  final String nameToken;
  final String imageUrl;
  final String titleToken;
  final int numberToken;
  final String unitl;
  const AssetsCard({
    Key? key,
    required this.nameToken,
    required this.imageUrl,
    required this.titleToken,
    required this.numberToken,
    required this.unitl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightContainer = MediaQuery.of(context).size.height;
    var widthContainer = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: widthContainer * 0.5,
            height: heightContainer * 0.3,
            color: Colors.black,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: heightContainer * 0.05,
                    color: Colors.yellowAccent,
                    child: Center(
                      child: Text(
                        nameToken,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage(imageUrl),
                        backgroundColor: Colors.transparent,
                      ),
                      Text(
                        titleToken,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        numberToken.toString() + ' ' + unitl,
                        style: const TextStyle(
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      numberToken == 0
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.lock,
                                                size: 14,
                                              ),
                                              SizedBox(width: 2),
                                              Text('Blance')
                                            ],
                                          ),
                                          Text(
                                            numberToken.toString() +
                                                ' ' +
                                                unitl,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.lock_open,
                                                size: 14,
                                              ),
                                              SizedBox(width: 2),
                                              Text('Blance')
                                            ],
                                          ),
                                          Text(
                                            numberToken.toString() +
                                                ' ' +
                                                unitl,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.yellow,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Withdraw'),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.yellow,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Withdraw'),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        side: const BorderSide(
                                            color: Color(0xffC09E63), width: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        elevation: 15.0,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Deposit',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        side: const BorderSide(
                                            color: Color(0xffC09E63), width: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        elevation: 15.0,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Trasfer',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
