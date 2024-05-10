extension StringExtension on String {
  String toFormattedHourString() {
    try {
      DateTime dateTime = DateTime.parse(this);

      String formattedHour = '${dateTime.hour.toString().padLeft(2, '0')}:00';
      return formattedHour;
    } catch (e) {
      return this;
    }
  }
}
