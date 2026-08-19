import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/Layouts/app_container.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../../../l10n/app_localizations.dart';
import '../blocs/docs_bloc/docs_bloc.dart';
import 'widgets/doc_widget.dart';

class DocsView extends StatefulWidget {
  const DocsView({super.key, required this.orderId});
  final int orderId;
  static const String routeName = 'docs';
  @override
  State<DocsView> createState() => _DocsViewState();
}

class _DocsViewState extends State<DocsView> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    getIt<DocsBloc>().add(DocsEvent.getDocs(orderId: widget.orderId));
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      getIt<DocsBloc>().add(DocsEvent.getDocs(orderId: widget.orderId));
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'توثيقات'),
      body: BlocBuilder<DocsBloc, DocsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (docs, hasMore) {
              return ListView.builder(
                controller: _scrollController,
                itemCount: (docs?.length ?? 0) + 1,
                itemBuilder: (context, i) {
                  if (i < docs!.length) {
                    final order = docs[i];
                    return AppContainer(
                      height: height / 3,
                      child: Card(
                        semanticContainer: true,
                        child: DocWidget(orderEntity: order),
                      ),
                    );
                  } else {
                    if (hasMore!) {
                      return const SizedBox();
                    } else if (docs.isNotEmpty && !hasMore) {
                      return const Center(
                        child: TrText('لا توجد وثائق إضافية'),
                      );
                    }
                    return const CircularProgressIndicator();
                  }
                },
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, i) {
                  return const SizedBox();
                },
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}

class GestureDetectorWidget extends StatelessWidget {
  GestureDetectorWidget({super.key, required this.onTap});

  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const AppContainer(child: Icon(Icons.location_on)),
    );
  }
}
