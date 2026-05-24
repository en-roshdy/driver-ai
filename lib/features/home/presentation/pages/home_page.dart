import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../orders/presentation/widgets/order_card.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../widgets/stat_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _loadHome();
  }

  void _loadHome() {
    context.read<HomeBloc>().add(GetHomeData());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.home),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const LoadingWidget();
          } else if (state is HomeLoaded) {
            final data = state.homeData;
            return RefreshIndicator(
              onRefresh: () async => _loadHome(),
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.statistics,
                            style: AppTextStyles.bold20,
                          ),
                          const SizedBox(height: AppSize.s16),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: AppSize.s12,
                              mainAxisSpacing: AppSize.s12,
                            ),
                            itemCount: data.statistics.length,
                            itemBuilder: (context, index) {
                              return StatCard(statistic: data.statistics[index]);
                            },
                          ),
                          const SizedBox(height: AppSize.s24),
                          Text(
                            l10n.pending_orders,
                            style: AppTextStyles.bold20,
                          ),
                          const SizedBox(height: AppSize.s8),
                        ],
                      ),
                    ),
                  ),
                  if (data.pendingOrders.isEmpty)
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p32),
                        child: Center(child: Text(l10n.no_pending_orders)),
                      ),
                    )
                  else
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return OrderCard(order: data.pendingOrders[index]);
                        },
                        childCount: data.pendingOrders.length,
                      ),
                    ),
                ],
              ),
            );
          } else if (state is HomeError) {
            return ErrorView(
              message: state.message,
              onRetry: _loadHome,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
