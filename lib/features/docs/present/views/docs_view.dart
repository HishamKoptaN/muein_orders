import '../../../../core/all_imports.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/docs_bloc.dart';
import '../bloc/docs_event.dart';
import '../bloc/docs_state.dart';
import 'build_shimmer_order_placeholder.dart';
import 'widgets/doc_widget.dart';

class DocsView extends StatefulWidget {
  const DocsView({super.key, required this.orderId});
  final int orderId;
  static const String routeName = "DocsView";
  @override
  State<DocsView> createState() => _DocsViewState();
}

class _DocsViewState extends State<DocsView> {
  final ScrollController _scrollController = ScrollController();
  late DocsBloc _docsBloc;
  @override
  void initState() {
    super.initState();
    _docsBloc = context.read<DocsBloc>();
    _docsBloc.add(
      DocsEvent.getDocs(orderId: widget.orderId),
    );
    _scrollController.addListener(
      _onScroll,
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      _docsBloc.add(
        DocsEvent.getDocs(orderId: widget.orderId),
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: CustomAppBar(title: t.documentations),
      body: BlocBuilder<DocsBloc, DocsState>(
        builder: (
          context,
          state,
        ) {
          return state.maybeWhen(
            loaded: (
              docs,
              hasMore,
              addOrderReqModel,
              uploadingProgress,
            ) {
              return ListView.builder(
                controller: _scrollController,
                itemCount: (docs?.length ?? 0) + 1,
                itemBuilder: (
                  context,
                  i,
                ) {
                  if (i < docs!.length) {
                    final order = docs[i];
                    return Stack(
                      children: [
                        Container(
                          height: height / 3,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: DocWidget(
                              orderEntity: order,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    if (hasMore!) {
                      return OrderShimmerWidget();
                    } else if (docs.isNotEmpty && !hasMore) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'لا يوجد توثيقات أخرى.',
                            style: TextStyles.bold16,
                          ),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  }
                },
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (
                  context,
                  i,
                ) {
                  return OrderShimmerWidget();
                },
              );
            },
            getDocsfailure: (e) {
              return Center(
                child: Text(
                  e.error ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              );
            },
            orElse: () {
              return SizedBox();
            },
          );
        },
      ),
    );
  }
}

class GestureDetectorWidget extends StatelessWidget {
  GestureDetectorWidget({
    super.key,
    required this.onTap,
  });

  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: const Icon(
          Icons.location_on,
          color: Colors.green,
        ),
      ),
    );
  }
}
