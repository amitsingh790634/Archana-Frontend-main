class Question {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "What do you think Myra believes in the moment?",
    "options": [
      'There was the wind blowing due to which the branch shook and caused the leaves to fall down',
      'There was a mouse living on the tree that just happened to jump across branches',
      'There was scary animal or a ghost hiding in the tree that meant to harm her'
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What do you think really happened?",
    "options": [
      'There was a ghost or a scary animal in the tree',
      'There was perhaps wind blowing due to which the branch shook and caused the leaves to fall down',
      'There was a mouse living on the tree that just happened to jump across branches',
    ],
    "answer_index": 1,
  },
];
