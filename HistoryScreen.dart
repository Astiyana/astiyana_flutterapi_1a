import 'package:flutter/material.dart';
import 'package:flutter_application_1a/model/HistoryScreen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List historyList = [
    HistoryScreen(
        date: "20/12/2024",
        no_order: "O12020202",
        makanan: "MIE AYAM",
        makanan_image:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.inidata.id%2Fkuliner%2F40110319485%2Fsiap-buka-bisnis-kuliner-ini-resep-mie-ayam-super-lezat-bahannya-ekonomis-bikinnya-praktis-ilmunya-gratis&psig=AOvVaw2SVEplze8lu-zlgWRuzukT&ust=1714972553767000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKif1trg9YUDFQAAAAAdAAAAABAN",
        subtotal: "Rp. 10000",
        quantity: "2"),
    HistoryScreen(
        date: "20/12/2024",
        no_order: "O12020203",
        makanan: "MIE AYAM JOMBO",
        makanan_image:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.inidata.id%2Fkuliner%2F40110319485%2Fsiap-buka-bisnis-kuliner-ini-resep-mie-ayam-super-lezat-bahannya-ekonomis-bikinnya-praktis-ilmunya-gratis&psig=AOvVaw2SVEplze8lu-zlgWRuzukT&ust=1714972553767000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKif1trg9YUDFQAAAAAdAAAAABAN",
        subtotal: "Rp. 12000",
        quantity: "1"),
    HistoryScreen(
        date: "21/12/2024",
        no_order: "O12020204",
        makanan: "MIE AYAM JOMBO",
        makanan_image:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.inidata.id%2Fkuliner%2F40110319485%2Fsiap-buka-bisnis-kuliner-ini-resep-mie-ayam-super-lezat-bahannya-ekonomis-bikinnya-praktis-ilmunya-gratis&psig=AOvVaw2SVEplze8lu-zlgWRuzukT&ust=1714972553767000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKif1trg9YUDFQAAAAAdAAAAABAN",
        subtotal: "Rp. 12000",
        quantity: "1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('History'),
        ),
        body: ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => {
                setState(() {
                  historyList = historyList
                      .where((element) => element.makanan == "MIE AYAM")
                      .toList();
                }),
              },
              child: Card(
                child: Container(
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                  image: NetworkImage(
                                      historyList[index].makanan_image)))),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(historyList[index].date),
                            Text(historyList[index].no_order),
                            Text(historyList[index].makanan),
                            Text(historyList[index].subtotal),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}