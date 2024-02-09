import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class temp extends StatelessWidget {
  temp({super.key});

  final TextEditingController namect = TextEditingController();
  final TextEditingController timect = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms App"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                  child: Text(
                "Form",
                style: TextStyle(fontSize: 25),
              )),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: namect,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "recipe Name"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: timect,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Time"),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () async {
                  FirebaseFirestore.instance.collection('RecipeHome').add(
                      {'recipename': namect.text, 'recipetime': timect.text});
                  namect.clear();
                  timect.clear();
                },
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    minimumSize: const MaterialStatePropertyAll(Size(500, 50))),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              // FutureBuilder<List<String>>(
              //   future: fetchmessages(),
              //   builder: (BuildContext context,
              //       AsyncSnapshot<List<String>> snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return CircularProgressIndicator();
              //     } else {
              //       List<String> message = snapshot.data ?? [];
              //       return Expanded(
              //         child: ListView.builder(
              //           itemBuilder: (context, index) {
              //             return Text(message[index]);
              //           },
              //           itemCount: message.length,
              //         ),
              //       );
              //     }
              //   },
              // ),
            ],
          ),
        ),
      )),
    );
  }

  // Future<List<String>> fetchmessages() async {
  //   QuerySnapshot<Map<String, dynamic>> querySnapshot =
  //       await FirebaseFirestore.instance.collection('RecipeHome').get();

  //   List<String> messages = [];
  //   querySnapshot.docs.forEach((doc) {
  //     messages.add('${doc['recipename']} - ${doc['recipetime']}');
  //   });
  //   return messages;
  // }
}
