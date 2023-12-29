import 'package:equatable/equatable.dart';

class TelegramGroup extends Equatable {
  final int? id;
  final String? title;
  final String? merchant;
  final String? token;

  const TelegramGroup({this.id, this.title, this.merchant, this.token});

  factory TelegramGroup.fromJson(Map<String, dynamic> json) => TelegramGroup(
        id: json['id'] as int?,
        title: json['title'] as String?,
        merchant: json['merchant'] as String?,
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'merchant': merchant,
        'token': token,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, title, merchant, token];
}
