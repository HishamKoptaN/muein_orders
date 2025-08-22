import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../app.dart';

void navG({
  required String route,
  Map<String, dynamic>? extra,
  void Function(dynamic val)? then,
}) {
  final context = GlobalVariable.navState.currentContext!;
  Future.delayed(Duration.zero, () {
    context.go(
      '/$route',
      extra: extra,
    );
  });
}

void navP({
  required String route,
  Map<String, dynamic>? extra,
  void Function(dynamic val)? then,
}) {
  final context = GlobalVariable.navState.currentContext!;
  Future.delayed(
    Duration.zero,
    () {
      context
          .pushNamed(
        route,
        extra: extra,
      )
          .then(
        (
          v,
        ) {
          if (then != null) {
            then(
              v,
            );
          }
        },
      );
    },
  );
}

void navPush({
  required String route,
  Map<String, dynamic>? extra,
  void Function(dynamic val)? then,
}) {
  final context = GlobalVariable.navState.currentContext!;
  Future.delayed(Duration.zero, () {
    context.push(
      '/$route',
      extra: extra,
    );
  });
}

void navPR(className) {
  Future.delayed(Duration.zero, () {
    Navigator.pushReplacement(
      GlobalVariable.navState.currentContext!,
      MaterialPageRoute(builder: (context) => className),
    );
  });
}

void navPRRU(String route, {Map<String, dynamic>? extra}) {
  final context = GlobalVariable.navState.currentContext!;
  Future.delayed(
    Duration.zero,
    () {
      context.go('/$route', extra: extra);
    },
  );
}

void navPop([dynamic val]) {
  if (GlobalVariable.navState.currentContext != null) {
    Future.delayed(
      Duration.zero,
      () {
        Navigator.of(GlobalVariable.navState.currentContext!).pop(val);
      },
    );
  }
}

void navPU() {
  Future.delayed(
    Duration.zero,
    () {
      Navigator.popUntil(
        GlobalVariable.navState.currentContext!,
        (route) => route.isFirst,
      );
    },
  );
}
