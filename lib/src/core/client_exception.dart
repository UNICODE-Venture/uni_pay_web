/// ClientException is thrown when the server responds with an error status code.
class ClientException implements Exception {
  /// The status code of the response.
  final int statusCode;

  /// The reason phrase associated with the status code.
  final String? reasonPhrase;

  /// The headers associated with the response.
  final Map<String, String> responseHeaders;

  /// The response body.
  final String responseBody;

  /// Creates a new ClientException with the specified status code, reason phrase, response headers, and response body.
  const ClientException(
    this.statusCode,
    this.reasonPhrase,
    this.responseHeaders,
    this.responseBody,
  );
  @override
  String toString() {
    return "DOException { statusCode: $statusCode, reasonPhrase: \"$reasonPhrase\", responseBody: \"$responseBody\" }";
  }
}
