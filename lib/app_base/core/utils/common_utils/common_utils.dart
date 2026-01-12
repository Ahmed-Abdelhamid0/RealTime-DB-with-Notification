double makeDouble(dynamic value) {
  if (value == null) {
    return 0.0;
  }

  if (value is String && value.isNotEmpty) {
    return double.parse(value);
  } else if (value is int) {
    return value.toDouble();
  } else if (value is double) {
    return value;
  }

  return 0.0;
}

int makeInt(dynamic value) {
  if (value is String && value.isNotEmpty) {
    return int.parse(value);
  } else if (value is double) {
    return value.toInt();
  } else if (value is int) {
    return value;
  }

  return 0;
}

String makeString(dynamic value) {
  if (value is String && value.isNotEmpty) {
    return value;
  } else if (value is double) {
    return value.toString();
  } else if (value is int) {
    return value.toString();
  }

  return '';
}
