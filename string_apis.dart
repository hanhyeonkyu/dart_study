extension StringToNum on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  num parseNum() {
    return num.parse(this);
  }
}
