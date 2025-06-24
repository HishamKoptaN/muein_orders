import 'package:mubin_orders/core/all_imports.dart';
import '../../core/widgets/custom_app_bar.dart';
import '../../l10n/app_localizations.dart';
import '../orders/present/views/orders_view.dart';
import '../drawer/my_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });
  static const String routeName = "HomeView";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: t.orders,
        ),
        //  AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     t.orders,
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 25.sp,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        drawer: const MyDrawer(),
        body: OrdersView(),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        //   child: PhysicalModel(
        //     color: Colors.white,
        //     elevation: 8,
        //     shadowColor: Colors.black.withOpacity(0.2),
        //     borderRadius: BorderRadius.circular(20),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(20),
        //       child: BottomNavigationBar(
        //         currentIndex: _currentIndex,
        //         onTap: (index) {
        //           setState(
        //             () {
        //               _currentIndex = index;
        //             },
        //           );
        //         },
        //         backgroundColor: Colors.white,
        //         selectedItemColor: Colors.green,
        //         unselectedItemColor: Colors.grey,
        //         type: BottomNavigationBarType.fixed,
        //         items: [
        //           BottomNavigationBarItem(
        //             icon: Icon(Icons.assignment, size: 28.sp),
        //             label: t.orders,
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(Icons.home, size: 28.sp),
        //             label: t.home_title,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
