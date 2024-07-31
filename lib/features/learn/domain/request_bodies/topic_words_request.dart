class TopicWordsRequest {
  final String topic;
  final String subtopic;
  TopicWordsRequest({required this.topic, required this.subtopic});
  Map<String, dynamic> toJson() {
    return {"topic_title": topic, "subtopic_title": subtopic};
  }
}
