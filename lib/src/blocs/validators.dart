import 'dart:async';

class Validators {
  
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      return email.contains('@') ? sink.add(email) : sink.addError('Enter a valid email');
    }
  );

    final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      return password.contains('@') ? sink.add(password) : sink.addError('Password must be at least 4 characters');
    }
  );

}