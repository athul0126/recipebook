import 'package:flutter/material.dart';
import 'package:recipebook/screens/RecipeScreen.dart';

class RecipeHorizontal extends StatelessWidget {
  const RecipeHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const RecipeScreen();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 12, bottom: 12),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 225, 215, 215)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // Spread radius
                      offset: const Offset(0, 3), // Offset (X, Y)
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/biriyani.jpg')),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    width: double.infinity,
                    height: 150,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 25),
                    child: Text(
                      "Chiken Biriyani",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 18,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('20 mins')
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            width: 12,
          );
        },
      ),
    );
  }
}
