import 'flavors.dart';
import 'main.dart' as main_app;

void main() {
  F.appFlavor = Flavor.prod;
  main_app.main();
}
