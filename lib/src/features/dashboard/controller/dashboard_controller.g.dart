// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardController on _DashboardControllerBase, Store {
  late final _$currentStateAtom =
      Atom(name: '_DashboardControllerBase.currentState', context: context);

  @override
  CurrentState get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(CurrentState value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  late final _$getPokemonsAsyncAction =
      AsyncAction('_DashboardControllerBase.getPokemons', context: context);

  @override
  Future getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  @override
  String toString() {
    return '''
currentState: ${currentState}
    ''';
  }
}
