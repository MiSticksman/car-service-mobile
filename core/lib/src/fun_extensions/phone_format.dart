extension PhoneFormatter on String {
  String formatPhone() {
    String phone = replaceAll(RegExp(r'\D+'), '');
    if (phone.length >= 11) {
      return '+7 ${phone.substring(1, 4)} ${phone.substring(4, 7)} ${phone.substring(7, 9)} ${phone.substring(9)}';
    }
    return phone;
  }
}
