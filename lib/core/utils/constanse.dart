import 'package:flutter/material.dart';

double kHeight(context) {
  return MediaQuery.of(context).size.height;
}

double kWidth(context) {
  return MediaQuery.of(context).size.width;
}

int kIndex = 0;
int kIndexColor = 0;
const kListRatingStates = [
  '😡',
  '😠',
  '🙂',
  '☺️',
  '🤩',
];
String kRating({
  required double rating,
}) {
  String ratingEmoji;
  if (rating >= 5) {
    ratingEmoji = '🤩';
  } else if (rating >= 4 && rating < 5) {
    ratingEmoji = '☺️';
  } else if (rating >= 3 && rating < 4) {
    ratingEmoji = '🙂';
  } else if (rating >= 2 && rating < 3) {
    ratingEmoji = '😠';
  } else {
    ratingEmoji = '😡';
  }
  return ratingEmoji;
}

const kDescription =
    "At GE Appliances, we bring good things to life, by designing and building the world's best appliances. Our goal is to help people improve their lives at home by providing quality appliances that were made for real life. Whether it's enjoying the tradition of making meals from scratch or tackling a mountain of muddy jeans and soccer jerseys, GE Appliances are crafted to support any and every task in the home.";

const kDelivery = "The earliest delivery date is May 24";

int kRatingPercentage({
  required int allRateCounter,
  required int rateCounter,
}) {
  double percentageRateCounter;
  percentageRateCounter = (rateCounter / allRateCounter) * 100;
  return percentageRateCounter.round();
}

int rate(index) {
  int? ratingCount;
  return ratingCount!;
}

const kListTitlesCategoriesInHome = [
  'Chair',
  'Sofa',
  'Stove',
  'Air Fryer',
  'Coffee Machine',
  'Smart TV',
  'Lamps',
  'Lamps Hades',
  'Hammer',
  'Screwdriver',
];

const kListMainCategoriesName = [
  'Furnitures',
  'Kitchens',
  'Electrical\nDevices',
  'Electrics',
  'Tools',
];

const kListFurnituresCategoriesName = [
  "Chairs",
  "Beds",
  "Desks",
  "Dining Table",
  "Gaming Chair",
  "Library",
  "Sofas",
  "Tables",
  "Wardrobes",
];

const kListkitchensCategoriesName = [
  "Stove",
  "Microwave",
  "Air Fryer",
  "Cookware",
  "Kitchen Tools",
  "Kitchen Air Extraction",
  "Smart Refrigerator",
];

const kListElectricalAppliancesCategoriesName = [
  "Coffee Machine",
  "Smart TV",
  "Air Conditioner",
  "Vacuum Cleaner",
  "Iron Appliance",
  "Washing Appliance",
];

const kListElectricsCategoriesName = [
  "Lamps",
  "Lampshades",
  "Electric Wires",
  "Chandelier",
];

const kListToolsCategoriesName = [
  "Dirll",
  "Hammer",
  "Screwdriver",
  "Pliers",
  "Saw",
];

const kListInMainCategoriesName = [
  kListFurnituresCategoriesName,
  kListkitchensCategoriesName,
  kListElectricalAppliancesCategoriesName,
  kListElectricsCategoriesName,
  kListToolsCategoriesName,
];
