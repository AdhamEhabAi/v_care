import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_care/core/widgets/custom_appbar.dart';
import 'package:v_care/features/results/presentation/manager/result_cubit.dart';
import 'package:v_care/features/results/presentation/views/widgets/order_details_view_body.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResultCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'النتائج', onPressed: () {}),
          body: const OrderDetailsViewBody(),
        ),
      ),
    );
  }
}
