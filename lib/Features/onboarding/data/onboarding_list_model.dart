import 'package:betak_store_app/Features/onboarding/data/models/onboarding_model.dart';

import '../../../core/styles/app_color.dart';
import '../../../core/utils/images.dart';

abstract class OnboardingData {
  static List<OnboardingItemDataModel> onboardingListData = [
    OnboardingItemDataModel(
      image1: AssetsImages.image1page1,
      image2: AssetsImages.image2page1,
      title: 'Furniture Brand & top quality',
      description:
          'Highest quality and best prices. There are the best models and brands in the world of home furniture and tools. There is everything you need.',
      color: AppColor.titlesOnboardingColors[0],
    ),
    OnboardingItemDataModel(
      image1: AssetsImages.image1page2,
      image2: AssetsImages.image2page2,
      title: 'Easy Ordering & Fast Delivery',
      description:
          'Order your furniture easily and it will arrive at your door quickly, safely, and with love.',
      color: AppColor.titlesOnboardingColors[1],
    ),
    OnboardingItemDataModel(
      image1: AssetsImages.image1page3,
      image2: AssetsImages.image2page3,
      title: 'We Secure Your Information',
      description:
          'Your information is safe, your banking and purchasing transactions, payment card data, addresses, and everything that concerns you is safe with us.',
      color: AppColor.titlesOnboardingColors[2],
    ),
  ];
}
