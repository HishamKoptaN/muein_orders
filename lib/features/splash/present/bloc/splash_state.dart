abstract class SplashState {
  const SplashState();
}

class SplashInitial extends SplashState {
  const SplashInitial();
}

class SplashLoading extends SplashState {
  const SplashLoading();
}

class SplashSuccess extends SplashState {
  const SplashSuccess();
}

class SplashFailure extends SplashState {
  final String message;
  const SplashFailure(this.message);
}
