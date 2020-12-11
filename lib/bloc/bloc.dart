import 'package:pomotimer/data/models/user.dart';
import 'package:pomotimer/data/resources/Respository.dart';
import 'package:rxdart/rxdart.dart';

class UsersInfoBloc {
  final _repository = Repository();
  final _userFetcher = PublishSubject<User>(); // Stream controller that has both a source and a sink

  Stream<User> get allUsers => _userFetcher.stream;

  fetchUserInfo() async {
    User user = await _repository
        .fetchUserInfo(); //TODO: _repository is not an abstract class so why are we able to call a method in it's class without instantiating it
    _userFetcher.sink
        .add(user); // data from the repository enters through this sink
  }

  dispose() {
    _userFetcher.close();
  }
}

final bloc = UsersInfoBloc();
