library modal_progress_hud;

import 'package:flutter/material.dart';

import 'custom_circular_progress_indicator.dart';

///
/// Wrap around any widget that makes an async call to show a modal progress
/// indicator while the async call is in progress.
///
/// The progress indicator can be turned on or off using [inAsyncCall]
///
/// The progress indicator defaults to a [CircularProgressIndicator] but can be
/// any kind of widget
///
/// The progress indicator can be positioned using [offset] otherwise it is
/// centered
///
/// The modal barrier can be dismissed using [dismissible]
///
/// The color of the modal barrier can be set using [color]
///
/// The opacity of the modal barrier can be set using [opacity]
///
/// HUD=Heads Up Display
///
class ModalProgressHUD extends StatelessWidget {

  const ModalProgressHUD({
    super.key,
    // ignore: tighten_type_of_initializing_formals
    this.inAsyncCall,
    this.opacity = 0.3,
    this.color = Colors.transparent,
    this.progressIndicator = const CustomCircularProgressIndicator(),
    this.offset,
    this.dismissible = false,
    required this.child,
  // ignore: prefer_asserts_with_message
  })  : assert(inAsyncCall != null);
  final bool? inAsyncCall;
  final double opacity;
  final Color color;
  final Widget progressIndicator;
  final Offset? offset;
  final bool dismissible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    // ignore: cascade_invocations
    widgetList.add(child);
    if (inAsyncCall ?? false) {
      Widget layOutProgressIndicator;
      if (offset == null) {
        layOutProgressIndicator = progressIndicator;
      } else {
        layOutProgressIndicator = progressIndicator;
      }
      final modal = [
        Opacity(
          opacity: opacity,
          child: ModalBarrier(dismissible: dismissible, color: color),
        ),
        layOutProgressIndicator
      ];
      widgetList += modal;
    }
    return Stack(
      children: widgetList,
    );
  }
}
