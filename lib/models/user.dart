import 'dart:core';

class User {
  String _username;
  String _uid;
  String _name;

  int _rating;
  int _level;
  int _totalEarning;
  int _currentEarning;
  int _gems;
  String _league;
  String _leagueID;

  // Stats
  int _gamesWon;
  int _gamesWonRate;
  int _bo5Won;
  int _bo5WonRate;

  int _bo3Won;
  int _bo3WonRate;

  int _bo1Won;
  int _bo1WonRate;

  User(
    this._username,
    this._uid,
    this._name,
    this._rating,
    this._level,
    this._totalEarning,
    this._currentEarning,
    this._gems,
    this._league,
    this._leagueID,
    this._gamesWon,
    this._gamesWonRate,
    this._bo5Won,
    this._bo5WonRate,
    this._bo3Won,
    this._bo3WonRate,
    this._bo1Won,
    this._bo1WonRate,
  );

  set username(String user) {
    _username = user;
  }

  set uid(String value) {
    _uid = value;
  }

  set name(String value) {
    _name = value;
  }

  set rating(int value) {
    _rating = value;
  }

  set level(int value) {
    _level = value;
  }

  set totalEarning(int value) {
    _totalEarning = value;
  }

  set currentEarning(int value) {
    _currentEarning = value;
  }

  set gems(int value) {
    _gems = value;
  }

  set league(String value) {
    _league = value;
  }

  set leagueID(String value) {
    _leagueID = value;
  }

  set gamesWon(int value) {
    _gamesWon = value;
  }

  set winRate(int value) {
    _gamesWonRate = value;
  }

  set bestOf5(int value) {
    _bo5Won = value;
  }

  set bestOf5Rate(int value) {
    _bo5WonRate = value;
  }

  set bestOf3(int value) {
    _bo3Won = value;
  }

  set bestOf3Rate(int value) {
    _bo3WonRate = value;
  }

  set bestOf1(int value) {
    _bo1Won = value;
  }

  set bestOf1Rate(int value) {
    _bo1WonRate = value;
  }

  get username => this._username;

  get uid => this._uid;

  get name => this._name;

  get rating => this._rating;

  get level => this._level;

  get totalEarning => this._totalEarning;

  get currentEarning => this._currentEarning;
  get gems => this._gems;

  get league => this._league;

  get leagueID => this._leagueID;

  get uamesWon => this._gamesWon;

  get uamesWonRate => this._gamesWonRate;

  get bestOf5Won => this._bo5Won;

  get bestOf5WonRate => this._bo5WonRate;

  get bestOf3Won => this._bo3Won;

  get bestOf3WonRate => this._bo3WonRate;

  get bestOf1Won => this._bo1Won;

  get bestOf1WonRate => this._bo1WonRate;
}
