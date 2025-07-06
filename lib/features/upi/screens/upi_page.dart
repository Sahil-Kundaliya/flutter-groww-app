import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/upi/cubits/upi_cubit.dart';
import 'package:groww_flutter/features/upi/cubits/upi_state.dart';
import 'package:groww_flutter/features/upi/widgets/single_upi_item_widget.dart';

class UpiScreen extends StatelessWidget {
  const UpiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => UpiCubit(),
      child: BlocBuilder<UpiCubit, UpiState>(builder: (context, state) {
        var upiCubit = context.read<UpiCubit>();
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    upiCubit.allUpiItems.length,
                    (index) {
                      var indexTool = upiCubit.allUpiItems[index];
                      return SingleUpiItemWidget(
                        toolName: indexTool.collectionTitle,
                        toolIcon: indexTool.collectionIcon,
                      );
                    },
                  )),
            ),
            Center(child: Text('UpiScreen')),
          ],
        );
      }),
    ));
  }
}
