import 'dart:async';

/// StreamController مع throttling لتقليل عدد مرات إعادة البناء
class ThrottledStreamController<T> {
  final Duration throttleDuration;
  Timer? _throttleTimer;
  T? _latestValue;
  final StreamController<T> _controller = StreamController<T>.broadcast();

  ThrottledStreamController({
    this.throttleDuration = const Duration(milliseconds: 500),
  });

  Stream<T> get stream => _controller.stream;

  void add(T value) {
    _latestValue = value;

    _throttleTimer?.cancel();
    _throttleTimer = Timer(throttleDuration, () {
      if (_latestValue != null) {
        _controller.add(_latestValue as T);
      }
    });
  }

  void close() {
    _throttleTimer?.cancel();
    _controller.close();
  }
}

/// دالة مساعدة لإنشاء Stream مع throttling
Stream<T> createThrottledStream<T>(
  Stream<T> source, {
  Duration throttleDuration = const Duration(milliseconds: 500),
}) {
  late ThrottledStreamController<T> throttledController;

  throttledController = ThrottledStreamController<T>(
    throttleDuration: throttleDuration,
  );

  source.listen(
    throttledController.add,
    onDone: throttledController.close,
    onError: throttledController._controller.addError,
  );

  return throttledController.stream;
}
