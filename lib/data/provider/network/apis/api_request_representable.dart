enum ApiMethod { get, post, delete, put, patch }

extension HTTPMethodString on ApiMethod {
  String get string {
    switch (this) {
      case ApiMethod.get:
        return "get";
      case ApiMethod.post:
        return "post";
      case ApiMethod.delete:
        return "delete";
      case ApiMethod.patch:
        return "patch";
      case ApiMethod.put:
        return "put";
    }
  }
}

abstract class APIRequestRepresentable {
  String get url;
  String get endpoint;
  String get path;
  ApiMethod get method;
  Map<String, String>? get headers;
  Map<String, String>? get query;
  dynamic get body;
  Future request();
}
