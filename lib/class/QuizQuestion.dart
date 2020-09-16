class QuizQuestion {
  String _question;
  List<String> _answers;
  QuizQuestion(this._question, this._answers);
  get getQuestion {
    return this._question;
  }

  get getAnswer {
    return this._answers;
  }
}
