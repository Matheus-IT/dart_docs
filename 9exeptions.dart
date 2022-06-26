int mustBeGreaterThantZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater than 0');
  }
  return val;
}

void verifyTheValue(var val) {
  var valVerification;

  try {
    valVerification = mustBeGreaterThantZero(val);
  } on Exception catch (e) {
    print(e);
  } finally {
    if (valVerification == null) {
      print('Value is not accepted');
    } else {
      print('Value verified $valVerification');
    }
  }
}

void main() {
  verifyTheValue(10);
  verifyTheValue(0);
}
