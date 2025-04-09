class CalendarDatePickerDemo extends StatefulWidget {
  @override
  State<CalendarDatePickerDemo> createState() => _CalendarDatePickerDemoState();
}

class _CalendarDatePickerDemoState extends State<CalendarDatePickerDemo> {
  @override
  Widget build(BuildContext ctx) {
    return CalendarDatePicker(
      initialCalendarMode: DatePickerMode.year,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.parse('2030-01-10'),
      onDateChanged: (selectedDatetime) {
        
      },
      selectableDayPredicate: (datetime) {
        if(datetime.month == 2 && datetime.day == 22) {
          return false;
        }
        return true;
      }
      
    );
  }
}
