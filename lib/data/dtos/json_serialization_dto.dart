abstract class JsonSerializationDto<T> {
  Map<String, dynamic> toMap(T object);

  T fromMap(Map<String, dynamic> map);

  String toJson(T object);

  T fromJson(String source);
}
