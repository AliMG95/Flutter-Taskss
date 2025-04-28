import 'package:flutter/material.dart';

void main() {
  runApp(const Screen2());
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: const Icon(Icons.arrow_back), actions: [
          IconButton(
            onPressed: () {
              print("search");
            },
            icon: const Icon(Icons.search),
            iconSize: 38,
          )
        ]),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 180,
                width: 400,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 171, 39),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Image.network(
                                'https://i.pinimg.com/736x/1f/a3/4a/1fa34adc25b7b50f3f774c9353db35e0.jpg',
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            ClipOval(
                              child: Image.network(
                                'https://i.pinimg.com/736x/1f/a3/4a/1fa34adc25b7b50f3f774c9353db35e0.jpg',
                                height: 30,
                                width: 30,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "13/13 Tasks - 100%",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 254, 251, 251)),
                            ),
                            Image.asset(
                              'assets/Vector.png',
                              height: 90,
                              width: 180,
                            )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "VR Course",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ],
                        )
                      ],
                    ))),
            SizedBox(
                height: 180,
                width: 400,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 11, 1, 86),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 80, // تحديد عرض للـ Stack
                              height: 30, // تحديد ارتفاع للـ Stack
                              child: Stack(
                                clipBehavior: Clip.none, // للسماح بالتراكب
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/1f/a3/4a/1fa34adc25b7b50f3f774c9353db35e0.jpg',
                                        height: 50,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 35,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/42/ed/81/42ed81e1e37b43342cba39752d93d050.jpg',
                                        height: 52,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 70,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/e9/ba/40/e9ba401b22f6355ffa19bed755ec8b73.jpg',
                                        height: 52,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 110,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/63/6e/3b/636e3b9e7b967e40fa8e0c9690f4ac8a.jpg',
                                        height: 52,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "2/8 Tasks - 35%",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 254, 251, 251)),
                            ),
                            Image.asset(
                              'assets/Build a community.png',
                              height: 90,
                              width: 180,
                            )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Community",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ],
                        )
                      ],
                    ))),
            SizedBox(
                height: 180,
                width: 400,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 11, 1, 86),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 80, // تحديد عرض للـ Stack
                              height: 30, // تحديد ارتفاع للـ Stack
                              child: Stack(
                                clipBehavior: Clip.none, // للسماح بالتراكب
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/1f/a3/4a/1fa34adc25b7b50f3f774c9353db35e0.jpg',
                                        height: 50,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 35,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/42/ed/81/42ed81e1e37b43342cba39752d93d050.jpg',
                                        height: 52,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 70,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/e9/ba/40/e9ba401b22f6355ffa19bed755ec8b73.jpg',
                                        height: 52,
                                        width: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "4/7 Tasks - 57%",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 254, 251, 251)),
                            ),
                            Image.asset(
                              'assets/Refer a friend.png',
                              height: 90,
                              width: 180,
                            )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "SMM Course",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ],
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
