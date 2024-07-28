import 'package:betak_store_app/Features/Screens/presentations/views/home/widget/layer1/logo_in_home_layer_1.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/home/widget/layer1/name_app_in_home_layer_1.dart';
import 'package:betak_store_app/Features/Screens/presentations/views/home/widget/layer1/search_in_home_field.dart';
import 'package:betak_store_app/core/utils/constanse.dart';
import 'package:betak_store_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class Layer1BodyView extends StatelessWidget {
  const Layer1BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: kWidth(context),
          alignment: AlignmentDirectional.topCenter,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AssetsImages.pic4,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              LogoInHomeLayer1(),
              SizedBox(
                height: 20,
              ),
              NameAppInHomeLayer1(),
              SizedBox(
                height: 20,
              ),
              SearchInHomeField(),
            ],
          ),
        )
      ],
    );
  }
}
