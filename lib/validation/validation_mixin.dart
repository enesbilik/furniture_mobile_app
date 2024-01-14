mixin CustomValidation {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email zorunluai';
    }
    final emailRegEx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegEx.hasMatch(value)) {
      return 'Hatalı email formatı';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Parola zorunlu';
    }
    if (value.length < 6) {
      return 'Parola en az 6 karakter olmalı';
    }
    return null;
  }

  String? validateConfirmPassword(String? confirmValue, String? value) {
    if (value == null || value.isEmpty) {
      return 'Tekrar parola zorunlu';
    }
    if (value.length < 6) {
      return 'Parola en az 6 karakter olmalı';
    }

    if (value != confirmValue) {
      return 'Parolalar eşleşmiyor';
    }
    return null;
  }

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Tam ad zorunlu';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Telefon numarası zorunlu';
    }
    final phoneRegEx = RegExp(r'^\+?[0-9]{10,12}$');
    if (!phoneRegEx.hasMatch(value)) {
      return 'Hatalı telefon numarası formatı';
    }
    return null;
  }
}
