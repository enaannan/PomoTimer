//TODO:fix this 
  //  List<_Pomodoro> _pomodoros = []; // contains tasks defined by the user
  // int _totalPomodoros; // total number of pomodoros a user has added



//promdoro class model
class _Pomodoro {
  String _pomodoroName;
  bool _isActive;
  int _targetSession;
  int _currentSession;

  _Pomodoro(Map<String, dynamic> pomodoros) {
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


// int get totalPomodoros => _totalPomodoros;
//   List<_Pomodoro> get pomodoros => _pomodoros;


//     List<_Pomodoro> temp = [];

// /* loop through pomodoro list,create pomodoro instances 
// based on data from network call and push all into a list called _pomodoro
// */
//     for (var i = 0; i < parsedJson['pomodoros'].length; i++) {
//       _Pomodoro _pomodoro = _Pomodoro(parsedJson['pomodoros'][i]);
//       temp.add(_pomodoro);
//     }

//     _pomodoros = temp;
//   }
