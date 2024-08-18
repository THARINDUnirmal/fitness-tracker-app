import 'package:fitness_traker_app/models/helth_card_model.dart';

class HelthCardData {
  final List<HelthCardModel> helthData = [
    HelthCardModel(
      cardImageUrl: "assets/icons/burn.png",
      cardValue: "230",
      cardTitle: "Water Level",
    ),
    HelthCardModel(
      cardImageUrl: "assets/icons/steps.png",
      cardValue: "7.8K",
      cardTitle: "Miles Steps",
    ),
    HelthCardModel(
      cardImageUrl: "assets/icons/distance.png",
      cardValue: "340m",
      cardTitle: "Coverd Distance",
    ),
    HelthCardModel(
      cardImageUrl: "assets/icons/sleep.png",
      cardValue: "7h48m",
      cardTitle: "Sleep",
    )
  ];
}
