import 'package:mobx/mobx.dart';

part 'date_picker_store.g.dart';

class DatePickerStore = DatePickerStoreBase with _$DatePickerStore;

abstract class DatePickerStoreBase with Store {
  @observable
  String fromDate = '';

  @observable
  String toDate = '';

  @action
  void setFromDate(DateTime date) {
    fromDate = "${date.day}-${date.month}-${date.year}";
    
    if (toDate.isNotEmpty) {
      DateTime selectedToDate = _parseDateString(toDate);
      if (selectedToDate.isBefore(date)) {
        toDate = '';
      }
    }
  }

  @action
  void setToDate(DateTime date) {
    toDate = "${date.day}-${date.month}-${date.year}";
  }

  DateTime _parseDateString(String dateStr) {
    List<String> parts = dateStr.split('-');
    return DateTime(
      int.parse(parts[2]),
      int.parse(parts[1]),
      int.parse(parts[0]),
    );
  }
}
