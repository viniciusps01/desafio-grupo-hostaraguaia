abstract class HttpClient {
  Future<String> get(String baseUrl, {Map<String, dynamic>? params});
}
