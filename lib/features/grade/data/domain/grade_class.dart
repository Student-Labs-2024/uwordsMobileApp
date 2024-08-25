class GradeClass {
  GradeClass({required this.stars, required this.message});

  final int stars;
  final String message;

  Map<String, dynamic> toJson() {
    return {
      "stars": stars,
      "message": message,
    };
  }
}
