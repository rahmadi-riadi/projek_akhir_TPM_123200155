import 'package:flutter/material.dart';
import 'package:list_resep/model/resep.dart';
import 'package:list_resep/views/widget/resep_card.dart';


class DetailResep extends StatelessWidget {
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String description;
  final String videoUrl;
  //final List<Instruction> instructions;

  DetailResep(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime,
      required this.description,
      required this.videoUrl,
      //required this.instructions
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('List Resep')
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.green, Colors.orange])),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ResepCard(
                    title: name,
                    rating: rating,
                    coockTime: totalTime,
                    thumbnialUrl: images,
                    videoUrl: videoUrl),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(description,
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            textAlign: TextAlign.justify),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(
                      //     'Instructions',
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 18),
                      //     textAlign: TextAlign.left,
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: ListView.builder(
                      //       itemCount: instructions.length,
                      //       itemBuilder: (context, index) {
                      //         return ListTile(
                      //             title: Text(instructions[index].displayText));
                      //       }),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
