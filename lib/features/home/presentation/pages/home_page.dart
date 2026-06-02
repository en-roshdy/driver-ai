import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../orders/presentation/widgets/order_card.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../widgets/home_header.dart';
import '../widgets/stat_card.dart';
import '../widgets/work_status_card.dart';

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
      backgroundColor: const Color(0xFFF5F6F9),
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const LoadingWidget();
            } else if (state is HomeLoaded) {
              final data = state.homeData;
              return RefreshIndicator(
                onRefresh: () async => _loadHome(),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      HomeHeader(
                        userName: context.read<HomeBloc>().homeRepository.getUserModel()?.name ?? "", // Replace with real data if available
                        userImage: '${context.read<HomeBloc>().homeRepository.getUserModel()?.image}',
                        notificationCount: 3,
                        onNotificationTap: () {},
                        onProfileTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: AppSize.s16),
                            WorkStatusCard(
                              isReceivingOrders: false,
                              onToggle: (val) {},
                            ),
                            const SizedBox(height: AppSize.s24),
                            // Highlights Statistics Header
                            Text(
                              l10n.top_statistics,
                              style: AppTextStyles.bold16.copyWith(color: AppColors.neutral700),
                            ),
                            const SizedBox(height: AppSize.s12),
                            // Statistics Grid
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(top: AppSize.s30), // Increased for the overflow icons
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.3, // Adjusted to match image proportions
                                crossAxisSpacing: AppSize.s12,
                                mainAxisSpacing: 20, // Increased spacing between rows for the icons
                              ),
                              itemCount: data.statistics.length,
                              itemBuilder: (context, index) {
                                return StatCardWithIcon(statistic: data.statistics[index]);
                              },
                            ),
                            const SizedBox(height: AppSize.s24),
                            // New Orders Header
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
        
                                Text(
                                  l10n.ready_for_new_order,
                                  style: AppTextStyles.bold16.copyWith(color: AppColors.neutral700),
                                ),
                                Text(
                                  l10n.view_all_orders,
                                  style: AppTextStyles.bold16.copyWith(color: AppColors.primary500),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSize.s12),
                            // Horizontal Orders List
                            if (data.pendingOrders.isEmpty)
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p32),
                                  child: Text(l10n.no_pending_orders),
                                ),
                              )
                            else
                              SizedBox(
                                height: 250, // Adjust height based on OrderCard design
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data.pendingOrders.length,
                                  itemBuilder: (context, index) {
                                    return OrderCard(
                                      order: data.pendingOrders[index],
                                      onAccept: () {},
                                    );
                                  },
                                ),
                              ),
                            const SizedBox(height: AppSize.s100), // Bottom padding for Nav Bar
                          ],
                        ),
                      ),
                    ],
                  ),
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
      ),
    );
  }
}
