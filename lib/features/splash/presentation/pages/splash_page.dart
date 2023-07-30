import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/router/app_routes.dart';

import '../bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _scaleController;
  late final AnimationController _opacityController;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1, end: 0.95),
        weight: 1,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.95, end: 1.5),
        weight: 2,
      ),
    ]).animate(_scaleController);
    _opacityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });
    _opacityAnimation = CurveTween(curve: Curves.easeIn).animate(
      _opacityController,
    );
    _scaleController.forward();
    Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        _opacityController.forward();
      },
    );
    // context.read<SplashBloc>().add(const GetLatLongEvent());
  }

  @override
  void dispose() {
    _opacityController.removeListener(() {});
    _scaleController
      ..removeListener(() {})
      ..dispose();
    _opacityController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<SplashBloc>().add(const SplashDurationEvent());
  }

  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.isTimerFinished) {
          if (!mounted) return;
          if (localSource.firstTime) {
            // Navigator.pushReplacementNamed(context, Routes.main);
            return;
          } else {
            // Navigator.pushReplacementNamed(context, Routes.chooseLanguage);
            return;
          }
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          body: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 84,
                child: Center(
                  child: Opacity(
                    opacity: 1 - _opacityAnimation.value,
                    child: const CircularProgressIndicator(),
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Transform.scale(
                    scale: _scaleAnimation.value,
                    child: Opacity(
                      opacity: 1 - _opacityAnimation.value,
                      child: Image.asset(
                        PngImage.logo,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
}
