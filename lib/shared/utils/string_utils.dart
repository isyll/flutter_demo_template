class StringUtils {
  static String joinUrlSegments(List<String> segments) {
    return segments
        .map((segment) => segment.trim())
        .where((segment) => segment.isNotEmpty)
        .map((segment) => segment.replaceAll(RegExp(r'^/+|/+\$'), ''))
        .join('/')
        .replaceAll(RegExp(r'(?<!:)//'), '/');
  }
}
