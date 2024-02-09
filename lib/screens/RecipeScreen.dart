import 'package:flutter/material.dart';
import 'package:recipebook/screens/HomeScreen.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const HomeScreen();
                            }));
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      const Text("Back")
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.green,
                            //fill: 25,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.ios_share_outlined,
                          ))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Container(
                    width: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/biriyani.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Chicken Biriyani",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("120 calories"),
                  SizedBox(
                    child: Row(
                      children: [Icon(Icons.access_time), Text("10 mins")],
                    ),
                  )
                ],
              ),
              const Divider(),
              const Text("Ingredients",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (ctx, index) {
                    return const Text("halo");
                  },
                  itemCount: 10,
                ),
              ),
              const Divider(),
              const Text("Prepare Your Dish",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return const Text("halo");
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
