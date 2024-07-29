

// ignore_for_file: prefer_typing_uninitialized_variables, annotate_overrides

class AppExceptions implements Exception {

  // ignore: prefer_typing_uninitialized_variables
  final _message ;
  final _prefix ;

  AppExceptions([this._message , this._prefix]) ;

  String toString(){
    return '$_prefix$_message';
  }

}


class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No internet') ;
}


class RequestTimeOut extends AppExceptions {

  RequestTimeOut([String? message]) : super(message, 'Request Time out') ;

}

class ServerException extends AppExceptions {

  ServerException([String? message]) : super(message, 'Internal server error') ;

}

class InvalidUrlException extends AppExceptions {

  InvalidUrlException([String? message]) : super(message, 'Invalid Url') ;

}

class FetchDataException extends AppExceptions {

  FetchDataException([String? message]) : super(message, 'data not fetch') ;

}