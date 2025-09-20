enum Flavor {
  development,
  staging,
  production,
  integration,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.integration:
        return 'Mubin Orders Integration';
      case Flavor.staging:
        return 'Mubin Orders Staging';
      case Flavor.development:
        return 'Mubin Orders Dev';
      case Flavor.production:
        return 'Mubin Orders';
      case null:
        return 'Mubin Orders';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.integration:
        return 'https://api.mubin-orders.com/integration';
      case Flavor.staging:
        return 'https://api.mubin-orders.com/staging';
      case Flavor.development:
        return 'https://api.mubin-orders.com/dev';
      case Flavor.production:
        return 'https://api.mubin-orders.com';
      case null:
        return 'https://api.mubin-orders.com';
    }
  }

  static bool get isIntegration => appFlavor == Flavor.integration;
  static bool get isDevelopment => appFlavor == Flavor.development;
  static bool get isStaging => appFlavor == Flavor.staging;
  static bool get isProduction => appFlavor == Flavor.production;
}
