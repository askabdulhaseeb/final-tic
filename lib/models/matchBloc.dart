import 'dart:async';
import 'package:FinalTic/models/user.dart';
import 'package:rxdart/rxdart.dart';

class MatchBloc {
  final _username = BehaviorSubject<String>();
  final _name = BehaviorSubject<String>();
  final _uid = BehaviorSubject<String>();
  final _ugold = BehaviorSubject<double>();
  final _ugems = BehaviorSubject<double>();
  final _matchType = BehaviorSubject<String>();
  final _enteryFee = BehaviorSubject<String>();

  Stream<String> get username => _username.stream;
  Stream<String> get name => _name.stream;
  Stream<String> get uid => _uid.stream;
  Stream<double> get uGold => _ugold.stream;
  Stream<double> get uGems => _ugems.stream;
  Stream<String> get matchType => _matchType.stream;
  Stream<String> get enteryFee => _enteryFee.stream;

  Function(String) get changeUsername => _username.sink.add;
  Function(String) get changeName => _name.sink.add;
  Function(String) get changeUid => _uid.sink.add;
  Function(double) get changeUGold => _ugold.sink.add;
  Function(double) get changeUGems => _ugems.sink.add;
  Function(String) get changeMatchType => _matchType.sink.add;
  Function(String) get changeEnteryFee => _enteryFee.sink.add;

  dispose() {
    _username.close();
    _name.close();
    _uid.close();
    _ugold.close();
    _ugems.close();
    _matchType.close();
    _enteryFee.close();
  }
}

final MatchBloc matchBloc = MatchBloc();
