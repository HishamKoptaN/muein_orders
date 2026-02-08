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
        return 'Muein Orders Integration';
      case Flavor.staging:
        return 'Muein Orders Staging';
      case Flavor.development:
        return 'Muein Orders Dev';
      case Flavor.production:
        return 'Muein Orders';
      case null:
        return 'Muein Orders';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.integration:
        return 'https://api.muein-orders.com/integration';
      case Flavor.staging:
        return 'https://api.muein-orders.com/staging';
      case Flavor.development:
        return 'https://api.muein-orders.com/dev';
      case Flavor.production:
        return 'https://api.muein-orders.com';
      case null:
        return 'https://api.muein-orders.com';
    }
  }

  static bool get isIntegration => appFlavor == Flavor.integration;
  static bool get isDevelopment => appFlavor == Flavor.development;
  static bool get isStaging => appFlavor == Flavor.staging;
  static bool get isProduction => appFlavor == Flavor.production;
}
