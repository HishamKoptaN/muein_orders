import 'package:shimmer/shimmer.dart';

import '../../../../../../core/all_imports.dart';

class ShimmerClientRow extends StatelessWidget {
  const ShimmerClientRow({super.key, required this.height});
 final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: height,
        margin: const EdgeInsets.symmetric(vertical: 4),
        color: Colors.white,
      ),
    );
  }
}
