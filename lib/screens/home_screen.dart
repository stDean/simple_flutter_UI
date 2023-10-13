import "package:flutter/material.dart";
import "/utils/emo_icon.dart";
import "/utils/exercise_tile.dart";

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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_email_unread),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Intro Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
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
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "How do you feel?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          EmoticonWidget(icon: "😞", mood: "Badly"),
                          EmoticonWidget(icon: "🙂", mood: "Fine"),
                          EmoticonWidget(icon: "😀", mood: "Well"),
                          EmoticonWidget(icon: "😆", mood: "Excellent"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Bottom Container
            bottomContainer
          ],
        ),
      ),
    );
  }
}

Widget bottomContainer = Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
    ),
    child: Column(
      children: [
        const SizedBox(height: 8),
        Center(
          child: Container(
            height: 7,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, left: 30, right: 30),
          child: Column(
            children: [
              // Excercise Heading
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercises',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),

              // const SizedBox(height: 10),

              // List of exercise
              ExerciseTile(
                color: Colors.orange,
                title: 'Speaking Skills',
                subTitle: '16 Exercises',
                icon: Icons.favorite,
              ),
              ExerciseTile(
                color: Colors.blue,
                title: 'Reading Speed',
                subTitle: '8 Exercises',
                icon: Icons.person,
              ),
              ExerciseTile(
                color: Colors.pink,
                title: 'Writing Skills',
                subTitle: '10 Exercises',
                icon: Icons.book,
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
