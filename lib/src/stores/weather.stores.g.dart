// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$weatherStore on _weatherStore, Store {
  Computed<bool>? _$isValidCityComputed;

  @override
  bool get isValidCity =>
      (_$isValidCityComputed ??= Computed<bool>(() => super.isValidCity,
              name: '_weatherStore.isValidCity'))
          .value;
  Computed<bool>? _$isValidSearchingComputed;

  @override
  bool get isValidSearching => (_$isValidSearchingComputed ??= Computed<bool>(
          () => super.isValidSearching,
          name: '_weatherStore.isValidSearching'))
      .value;

  late final _$cityAtom = Atom(name: '_weatherStore.city', context: context);

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$searchingAtom =
      Atom(name: '_weatherStore.searching', context: context);

  @override
  bool get searching {
    _$searchingAtom.reportRead();
    return super.searching;
  }

  @override
  set searching(bool value) {
    _$searchingAtom.reportWrite(value, super.searching, () {
      super.searching = value;
    });
  }

  late final _$_weatherStoreActionController =
      ActionController(name: '_weatherStore', context: context);

  @override
  void setCity(String value) {
    final _$actionInfo = _$_weatherStoreActionController.startAction(
        name: '_weatherStore.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_weatherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearching() {
    final _$actionInfo = _$_weatherStoreActionController.startAction(
        name: '_weatherStore.setSearching');
    try {
      return super.setSearching();
    } finally {
      _$_weatherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
city: ${city},
searching: ${searching},
isValidCity: ${isValidCity},
isValidSearching: ${isValidSearching}
    ''';
  }
}
