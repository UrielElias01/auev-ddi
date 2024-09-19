import 'package:auev_yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonToMap(Map<String, dynamic> json) => YesNoModel(
        answer: _translateAnswer(json["answer"]),
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() =>
      Message(text: answer, fromWho: FromWho.her, imageUrl: image);

  static String _translateAnswer(String originalAnswer) =>
      {'yes': 'sí', 'no': 'no', 'maybe': 'tal vez'}[originalAnswer] ??
      originalAnswer;
}
