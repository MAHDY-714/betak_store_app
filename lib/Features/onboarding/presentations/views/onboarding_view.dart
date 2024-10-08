import 'package:betak_store_app/Features/onboarding/presentations/views/widget/onboarding_body_view.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingBodyView(),
    );
  }
}
