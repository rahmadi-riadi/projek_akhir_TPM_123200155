class Instruction {
  final String displayText;

  Instruction({
    required this.displayText,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        displayText: json["display_text"] != null ? json["display_text"] : '',
      );
}

class Resep {
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String description;
  final String videoUrl;
  //final List<Instruction> instructions;

  Resep({
    required this.name,
    required this.images,
    required this.rating,
    required this.totalTime,
    required this.description,
    required this.videoUrl,
    //required this.instructions,
  });

  factory Resep.fromJson(dynamic json) {
    return Resep(
        name: json['name'] as String,
        images: json['thumbnail_url'] as String,
        rating: json['country'] as String,
        totalTime: json['total_time_minutes'] != null
            ? json['total_time_minutes'].toString() + " minutes"
            : "30 minutes",
        description: json['description'] != null ? json['description'] : " ",
        videoUrl: json['original_video_url'] != null
            ? json['original_video_url']
            : 'nonVideo',
        // instructions: json["instructions"] != null
        //     ? List<Instruction>.from(
        //         json["instruction"].map((x) => Instruction.fromJson(x)))
        //     : []
    );
  }

  static List<Resep> resepFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Resep.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    //todo: implement toString
    return 'Resep {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }
}
