import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_care/core/widgets/custom_appbar.dart';
import 'package:v_care/features/results/presentation/manager/result_cubit.dart';
import 'package:v_care/features/results/presentation/views/widgets/complete_or_not_widget.dart';
import 'package:v_care/features/results/presentation/views/widgets/completed_body.dart';
import 'package:v_care/features/results/presentation/views/widgets/sorting_widgets.dart';
import 'package:v_care/features/results/presentation/views/widgets/uncompleted_body.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = screenWidth - 58.0;
    final halfWidth = containerWidth / 2;

    final PageController pageController = PageController(initialPage: 1);

    return BlocProvider(
      create: (context) => ResultCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'النتائج',onPressed: (){}),
          body: Column(
            children: [
              BlocBuilder<ResultCubit, ResultState>(
                builder: (context, state) {
                  bool isSelected =
                      BlocProvider.of<ResultCubit>(context).isComp;
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 29.0, vertical: 11.0),
                    child: CompleteOrNotWidget(
                      containerWidth: containerWidth,
                      isSelected: isSelected,
                      halfWidth: halfWidth,
                      onSwitch: (bool isSelected) {
                        pageController.animateToPage(
                          isSelected ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );

                      },
                    ),
                  );
                },
              ),
              const SortingWidgets(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CompletedBody(),
                    UnCompletedBody(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


