class DatetimeDemo extends StatefulWidget {
  @override
  State<DatetimeDemo> createState() => _DatetimeDemoState();
}

class _DatetimeDemoState extends State<DatetimeDemo> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay(hour:8, minute:0);
  
  @override
  Widget build(ctx) {
    return Column(
      children: [
        TextButton(
          child: Text('showDate'),
          onPressed: () async {
            final selectDate = await showDatePicker(
              context:ctx,
              initialDate: _date,
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
            );
            
            if(selectDate != null) {
              setState((){
                _date = selectDate;   
                
              });
            }
          }
        ),
        TextButton(
          child: Text('showTime'),
          onPressed: () async {
            final selectTime = await showTimePicker(
              context:ctx,
              initialTime: _time,
              
            );
            
            if(selectTime != null) {
              setState(() {
                _time = selectTime;
              });
            }
          }
        ),
        Text('${DateFormat.yMMMd().format(_date)} ${_time.format(ctx)}')
      ]
    );
  }
}
