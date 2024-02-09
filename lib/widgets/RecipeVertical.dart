import 'package:flutter/material.dart';
import 'package:recipebook/screens/RecipeScreen.dart';

class RecipeVertical extends StatelessWidget {
  const RecipeVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const RecipeScreen();
              }));
            },
            child: Container(
                padding: const EdgeInsets.only(top: 5, left: 5),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 225, 215, 215)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // Spread radius
                      offset: const Offset(0, 3), // Offset (X, Y)
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                height: 90,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/food.jpg',
                              )),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 75,
                      height: 75,
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 90,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Recipe Name",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('15 mins')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 50,
                      height: 90,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const RecipeScreen();
                            }));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 58, 195, 110),
                          )),
                    ),
                  ],
                )),
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
    );
  }
}
