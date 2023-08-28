
class Todo {
  Todo({required this.id, required this.description, required this.completedAt});

  final String id;
  final String description;
  final DateTime? completedAt;

  bool get done{
    return completedAt != null;
  }

  Todo copyWith({
    String? description,
    String? id,
    DateTime? completedAt,
  }) => Todo(
    id: id ?? this.id,
    description: description ?? this.description,
    completedAt: completedAt,
    );




  
}