import 'package:flutter/material.dart';
import 'package:shopping_application_ui/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopping UI',
      home: MyShoppingUi(),
    );
  }
}

class MyShoppingUi extends StatefulWidget {
  const MyShoppingUi({super.key});

  @override
  State<MyShoppingUi> createState() => _MyShoppingUiState();
}

class _MyShoppingUiState extends State<MyShoppingUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: null,
        title: const Text('Shopping UI'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            'Actions',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            'Adventure',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            'Racing',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            'RPG',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            'Simulation',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                image: 'assets/images/witcher.jpg',
                tag: 'red',
                name: "The Witcher 3: Wild Hunt",
                context: context,
              ),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                image: 'assets/images/tomb.jpg',
                tag: 'blue',
                name: "Tomb Raider",
                context: context,
              ),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                image: 'assets/images/709974.jpg',
                tag: 'rose',
                name: "Zelda: Breath of the Wild",
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, name, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Game(
                      image: image,
                      tag: tag,
                      name: name,
                    )),
          );
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400] as Color,
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'RPG',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                '\$59.99',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
