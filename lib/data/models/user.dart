class User {
  String _firstName;
  List<_Pomodoro> _pomodoros = [];
  int _totalPomodoros;

  User.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson);
    _firstName = parsedJson['firstName'];
    _totalPomodoros = parsedJson['pomodoros'].length;

    List<_Pomodoro> temp = [];
    
    for (var i = 0; i < parsedJson['pomodoros'].length; i++) {
      _Pomodoro _pomodoro = _Pomodoro(parsedJson['pomodoros'][i]);
      temp.add(_pomodoro);
    }

    _pomodoros = temp;
  }

  String get firstName => _firstName;
  int get totalPomodoros => _totalPomodoros;
  List<_Pomodoro> get pomodoros => _pomodoros;
}

class _Pomodoro {
  String _pomodoroName;
  bool _isActive;
  int _targetSession;
  int _currentSession;

  _Pomodoro(pomodoros) {
    _pomodoroName = pomodoros['name'];
    _isActive = pomodoros['isActive'];
    _targetSession = pomodoros['targetSession'];
    _currentSession = pomodoros['currentSession'];
  }
  String get pomodoroName => _pomodoroName;
  bool get isActive => _isActive;
  int get targetSession => _targetSession;
  int get currentSession => _currentSession;
}
// class Task {
//     final name;
//     final currentSession;
//     final targetSession;

//   Task(this.name, this.currentSession, this.targetSession);
//     //TODO: make sure currentSession neveer exceeds targetSession
// }
