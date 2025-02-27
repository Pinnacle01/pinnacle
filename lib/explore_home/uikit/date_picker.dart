import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pinnacle_main/explore_home/store/date_picker_store.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class CustomDatePicker extends StatefulWidget {
  final String label;
  final String prefixIcon;
  final double? labelSize;
  final double? prefixSize;
  final Color? bgColor;
  final Color? labelColor;
  final Color? hintColor;
  final Color? fieldTextColor;
  final Color? prefixIconColor;

  const CustomDatePicker({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.hintColor,
    this.labelColor,
    this.labelSize,
    this.bgColor,
    this.prefixSize,
    this.fieldTextColor,
    this.prefixIconColor,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final DatePickerStore _datePickerStore = DatePickerStore();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: widget.label,
          size: widget.labelSize ?? Sizes.size16.sp,
          fontWeight: FontWeight.bold,
          color: widget.labelColor ?? CustomColors.lightBackgroundColor,
        ),
        SizedBox(height: Sizes.size10.dp),
        Row(
          children: [
            _singleDateField(
              hintText: GeneralString.from,
              isFrom: true,
            ),
            SizedBox(width: Sizes.size20.dp),
            _singleDateField(
              hintText: GeneralString.to,
              isFrom: false,
            ),
          ],
        )
      ],
    );
  }

  Widget _prefixIconWidget({required bool isFrom}) => InkWell(
        onTap: () async {
          DateTime initialDate = DateTime.now();
          DateTime firstDate = DateTime.now();
          DateTime lastDate = DateTime(2100);

          if (!isFrom && _datePickerStore.fromDate.isNotEmpty) {
            firstDate = _parseDate(_datePickerStore.fromDate)
                .add(const Duration(days: 1));
            initialDate = firstDate;
          }

          DateTime? selectedDate = await showDatePicker(
            context: context,
            initialDate: initialDate,
            firstDate: firstDate,
            lastDate: lastDate,
          );

          if (selectedDate != null) {
            if (isFrom) {
              _datePickerStore.setFromDate(selectedDate);
            } else {
              _datePickerStore.setToDate(selectedDate);
            }
          }
        },
        child: IconWidget(
          path: widget.prefixIcon,
          size: widget.prefixSize ?? Sizes.size20.sp,
          color: widget.prefixIconColor ?? CustomColors.whiteColor,
        ),
      );

  Widget _singleDateField({required String hintText, required bool isFrom}) =>
      Flexible(
        child: Container(
          padding: EdgeInsets.only(right: Sizes.size20.dp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.size15.sp),
            color: widget.bgColor ?? CustomColors.navCardBackgroundColor222222,
          ),
          child: Row(
            children: [
              Expanded(
                child: Observer(
                  builder: (_) => TextField(
                    controller: TextEditingController(
                      text: isFrom
                          ? _datePickerStore.fromDate
                          : _datePickerStore.toDate,
                    ),
                    keyboardType: TextInputType.datetime,
                    style: TextStyle(
                      color: widget.fieldTextColor ?? CustomColors.whiteColor,
                    ),
                    enabled: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: widget.bgColor ??
                          CustomColors.navCardBackgroundColor222222,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: widget.hintColor ??
                            CustomColors.lightBackgroundColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Sizes.size15.sp),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              _prefixIconWidget(isFrom: isFrom),
            ],
          ),
        ),
      );

  DateTime _parseDate(String dateStr) {
    List<String> parts = dateStr.split('-');
    return DateTime(
      int.parse(parts[2]),
      int.parse(parts[1]),
      int.parse(parts[0]),
    );
  }
}
