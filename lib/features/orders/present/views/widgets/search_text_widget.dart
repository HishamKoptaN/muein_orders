import '../../../../../core/all_imports.dart';
import '../../bloc/orders_bloc.dart';

class SearchTextWidget extends StatefulWidget {
  const SearchTextWidget({super.key, required TextEditingController controller})
    : _controller = controller;

  final TextEditingController _controller;

  @override
  State<SearchTextWidget> createState() => _SearchTextWidgetState();
}

class _SearchTextWidgetState extends State<SearchTextWidget> {
  @override
  Widget build(BuildContext context) => TextField(
    controller: widget._controller,
    style: const TextStyle(color: Colors.white),
    onChanged: (v) {
      context.read<OrdersBloc>().add(
        v.trim().isNotEmpty
            ? OrdersEvent.searchOrders(query: v)
            : const OrdersEvent.disposeSearch(),
      );
      setState(() {});
    },
    decoration: InputDecoration(
      hintText: 'Search',
      // Previously: widget.t.search_name_customer_number_mobile_number,
      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
      filled: true,
      fillColor: Colors.grey[900],
      suffixIcon: widget._controller.text.isNotEmpty
          ? IconButton(
              icon: const Icon(Icons.clear, color: Colors.white),
              onPressed: () {
                widget._controller.clear();
                context.read<OrdersBloc>().add(
                  const OrdersEvent.disposeSearch(),
                );
                setState(() {});
              },
            )
          : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  );
}
