import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';

class OrdersView extends ConsumerStatefulWidget {
  const OrdersView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrdersViewState();
}

class _OrdersViewState extends ConsumerState<OrdersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Siparişlerim",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: AppPadding().pA15,
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey[300]!),
              ),
              padding: AppPadding().pA15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.4),
                            width: 1,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            "https://static.wixstatic.com/media/1eac05_0796c2eab9e145439ae56bd6aee65d86~mv2.png/v1/fill/w_680,h_680,al_c,lg_1,q_90,enc_auto/1eac05_0796c2eab9e145439ae56bd6aee65d86~mv2.png",
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "26 Kasım",
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                          Text(
                            "Paz, 21.05",
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Column(
                        children: [
                          Text(
                            "12.999,00 TL",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Kredi Kartı",
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        index % 2 == 0
                            ? Icons.watch_later_rounded
                            : Icons.check_circle_rounded,
                        color: index % 2 == 0
                            ? Colors.grey.shade700
                            : Colors.green,
                      ),
                      SizedBox(width: 8),
                      Text(index % 2 == 0 ? "Kargoya verildi" : "Tamamlandı"),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
