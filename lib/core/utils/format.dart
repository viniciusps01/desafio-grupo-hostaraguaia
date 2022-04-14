String stringListToFormatedString(List<String> list, {String divider = '/'}) {
  final res = list.fold('', (prev, element) => '$prev $divider $element');
  return res.replaceFirst(divider, '');
}
