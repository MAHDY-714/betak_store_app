import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

abstract class AssetsImages {
  ///All path
  static const basicPathImages = 'assets/images';
  static const imagesSplashViewPath = '$basicPathImages/images_splash_view';
  static const homeImagesLayer1Path = '$basicPathImages/home_images_background';
  static const navBarPath = '$basicPathImages/nav_bar_icons';
  static const myCartPath = '$basicPathImages/my_cart_icons';
  static const profilePath = '$basicPathImages/profile_images';
  static const mainCategoriesPath = '$basicPathImages/main_categories';
  static const inMainCategoriesPath = '$basicPathImages/in_main_categories';
  static const furniturePath = '$inMainCategoriesPath/furniture_Category';
  static const kitchenPath = '$inMainCategoriesPath/kitchen_Category';
  static const electricalAppliancesPath =
      '$inMainCategoriesPath/electricalAppliances_Category';
  static const electricsPath = '$inMainCategoriesPath/electrics_Category';
  static const toolsPath = '$inMainCategoriesPath/tools_category';

  /// images_splash_view
  static const backIcon = '$basicPathImages/backIcon.png';

  ///rating
  static const starIcon = '$basicPathImages/rating/star.png';

  static const logo = '$basicPathImages/Logo.png';

  ///images splash view

  static const image1page1 = "$imagesSplashViewPath/image1page1.png";
  static const image2page1 = "$imagesSplashViewPath/image2page1.png";
  static const image1page2 = "$imagesSplashViewPath/image1page2.png";
  static const image2page2 = "$imagesSplashViewPath/image2page2.png";
  static const image1page3 = "$imagesSplashViewPath/image1page3.png";
  static const image2page3 = "$imagesSplashViewPath/image2page3.png";

  /// home_images_background

  static const pic1 = "$homeImagesLayer1Path/pic1.png";
  static const pic2 = "$homeImagesLayer1Path/pic2.png";
  static const pic3 = "$homeImagesLayer1Path/pic3.png";
  static const pic4 = "$homeImagesLayer1Path/pic4.png";

  ///nav bar icons

  static const homeIcon = "$navBarPath/homeIcon.png";
  static const productsIcon = "$navBarPath/productsIcon.png";
  static const searchIcon = "$navBarPath/searchIcon.png";
  static const myCartIcon = "$navBarPath/myCartIcon.png";
  static const categoriesIcon = "$navBarPath/categoriesIcon.png";
  static const categoriesIcon2 = "$navBarPath/categoriesIcon2.png";
  static const profileIcon = "$navBarPath/profile.png";
  static const settingsIcon = "$navBarPath/settingsIcon.png";
  static const settingsIcon1 = "$navBarPath/settingsIcon1.png";
  static const settingsIcon2 = "$navBarPath/settingsIcon2.png";

  //*my cart icons
  static const myCartIconAdd = "$myCartPath/myCartIconAdd.png";
  static const myCartIconCheckIn = "$myCartPath/myCartIconCheckIn.png";

  ///profile Images
  static const avatarMan = '$profilePath/avatarMan.jpg';
  static const avatarWoman = '$profilePath/avatarWoman.jpg';

//listMainCategories

  static const listMainCategories = [
    "$mainCategoriesPath/furnitures.jpg",
    "$mainCategoriesPath/kitchens.jpg",
    "$mainCategoriesPath/electricalAppliances.jpeg",
    "$mainCategoriesPath/electrics.jpg",
    "$mainCategoriesPath/tools.jpg",
  ];

  ///furnitures done 9

  static const listFurnituresCategories = [
    "$furniturePath/chairs.png",
    "$furniturePath/beds.jpg",
    "$furniturePath/desks.png",
    "$furniturePath/diningTable.jpg",
    "$furniturePath/gamingChair.jpg",
    "$furniturePath/library.jpg",
    "$furniturePath/sofas.png",
    "$furniturePath/tables.png",
    "$furniturePath/wardrobes.png",
  ];

  ///kitchens done 7

  static const listKitchensCategories = [
    "$kitchenPath/stove.png",
    "$kitchenPath/microwave.jpg",
    "$kitchenPath/airFryer.jpg",
    "$kitchenPath/cookware.jpg",
    "$kitchenPath/kitchenTools.jpg",
    "$kitchenPath/kitchenAirExtraction.jpg",
    "$kitchenPath/smartRefrigerator.jpg",
  ];

  ///ectrical Devices 6

  static const listElectricalAppliancesCategories = [
    "$electricalAppliancesPath/coffeeMachine.jpg",
    "$electricalAppliancesPath/smartTV.jpg",
    "$electricalAppliancesPath/airConditioner.jpg",
    "$electricalAppliancesPath/vacuumCleaner.jpg",
    "$electricalAppliancesPath/ironAppliance.jpg",
    "$electricalAppliancesPath/washingAppliance.jpg",
  ];

  ///Electrics 3

  static const listElectricsCategories = [
    "$electricsPath/lamps.png",
    "$electricsPath/lampshades.jpg",
    "$electricsPath/electricWires.jpg",
    "$electricsPath/chandelier.jpg",
  ];

  ///Tools 4

  static const listToolsCategories = [
    "$toolsPath/dirll.jpg",
    "$toolsPath/hammer.jpg",
    "$toolsPath/screwdriver.jpg",
    "$toolsPath/Pliers.jpg",
    "$toolsPath/saw.jpg",
  ];

  /// some categories in main Categories in Home
  static const listCategoriesInHome = [
    "$furniturePath/chairs.png",
    "$furniturePath/sofas.png",
    "$kitchenPath/stove.png",
    "$kitchenPath/airFryer.jpg",
    "$electricalAppliancesPath/coffeeMachine.jpg",
    "$electricalAppliancesPath/smartTV.jpg",
    "$electricsPath/lamps.png",
    "$electricsPath/lampshades.jpg",
    "$toolsPath/hammer.jpg",
    "$toolsPath/screwdriver.jpg",
  ];

  static const listCategoriesItems = [
    listFurnituresCategories,
    listKitchensCategories,
    listElectricalAppliancesCategories,
    listElectricsCategories,
    listToolsCategories,
  ];
  // IconData iconsArrowF = FontAwesomeIcons.angleRight;
  IconData iconsArrowTR = TablerIcons.square_arrow_right_filled;
  IconData iconsArrowTL = TablerIcons.square_arrow_left_filled;
}

///FontAowsom
