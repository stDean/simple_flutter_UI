import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // Intro Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, Dean",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "11 Oct, 2023",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),

              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(15),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // How are you feeling Row
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.square,
                              size: 7,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.square,
                              size: 7,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                              "😞",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Badly",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                              "🙂",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Fine",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                              "😀",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Well",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                              "😆",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Excellent",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              // Bottom Container
            ],
          ),
        ),
      ),
    );
  }
}
