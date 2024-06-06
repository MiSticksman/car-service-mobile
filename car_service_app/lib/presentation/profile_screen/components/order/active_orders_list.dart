import 'package:car_service_app/presentation/profile_screen/components/order/active_order_card.dart';
import 'package:flutter/material.dart';

class ActiveOrdersList extends StatelessWidget {
  const ActiveOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return ActiveOrderCard();
        },
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: 5,
      ),
    );
  }
}
