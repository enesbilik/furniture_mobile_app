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
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 0.5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              widget.cartProductModel.imageUrl,
              width: 100,
            ),
          ),
          const SizedBox(
            width: 6,
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
