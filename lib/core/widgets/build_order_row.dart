import '../../../../core/all_imports.dart';
import '../../../../core/widgets/widget_column_header.dart';
import '../../features/orders/domain/entities/orders_res_entity.dart';

Widget buildOrderRow({
  required OrderEntity order,
  required t,
  required BuildContext context,
}) {
  return Container(
    height: 75.h,
    padding: EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        Flexible(
          flex: 4,
          fit: FlexFit.tight,
          child: buildTransactionDetail(text: order.printedName ?? ''),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: buildTransactionDetail(text: order.executionNum ?? ''),
        ),
        order.isDistributionPhotographed == true
            ? Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Center(
                  child: Icon(
                    Icons.check_circle
                    // order.isQuranPhotographed == true
                    //     ? Icons.check_circle
                    //     : Icons.cancel
                    ,
                    color: Colors.green,
                    // order.isQuranPhotographed == true
                    //     ? Colors.green
                    //     : Colors.red,
                    size: 24.sp,
                  ),
                ),
              )
            : SizedBox(),
      ],
    ),
  );
}
