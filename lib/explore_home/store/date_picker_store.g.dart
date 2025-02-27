// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_picker_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DatePickerStore on DatePickerStoreBase, Store {
  late final _$fromDateAtom =
      Atom(name: 'DatePickerStoreBase.fromDate', context: context);

  @override
  String get fromDate {
    _$fromDateAtom.reportRead();
    return super.fromDate;
  }

  @override
  set fromDate(String value) {
    _$fromDateAtom.reportWrite(value, super.fromDate, () {
      super.fromDate = value;
    });
  }

  late final _$toDateAtom =
      Atom(name: 'DatePickerStoreBase.toDate', context: context);

  @override
  String get toDate {
    _$toDateAtom.reportRead();
    return super.toDate;
  }

  @override
  set toDate(String value) {
    _$toDateAtom.reportWrite(value, super.toDate, () {
      super.toDate = value;
    });
  }

  late final _$DatePickerStoreBaseActionController =
      ActionController(name: 'DatePickerStoreBase', context: context);

  @override
  void setFromDate(DateTime date) {
    final _$actionInfo = _$DatePickerStoreBaseActionController.startAction(
        name: 'DatePickerStoreBase.setFromDate');
    try {
      return super.setFromDate(date);
    } finally {
      _$DatePickerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setToDate(DateTime date) {
    final _$actionInfo = _$DatePickerStoreBaseActionController.startAction(
        name: 'DatePickerStoreBase.setToDate');
    try {
      return super.setToDate(date);
    } finally {
      _$DatePickerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fromDate: ${fromDate},
toDate: ${toDate}
    ''';
  }
}
