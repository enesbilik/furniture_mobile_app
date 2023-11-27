import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/view/cart/cart_riverpod.dart';

class CartProductCard extends ConsumerStatefulWidget {
  final CartProductModel cartProductModel;
  final int index;
  const CartProductCard(this.cartProductModel, this.index, {super.key});

  @override
  ConsumerState<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends ConsumerState<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(cartRiverpod);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
              width: 100,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.cartProductModel.title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                widget.cartProductModel.price,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 120,
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    watch.decrementProductAmount(widget.index);
                  },
                  icon: Icon(
                    widget.cartProductModel.amount == 1
                        ? Icons.delete_forever
                        : Icons.remove,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                Text(
                  widget.cartProductModel.amount.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                  onPressed: () {
                    watch.incrementProductAmount(widget.index);
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
