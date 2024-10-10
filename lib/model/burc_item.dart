import 'package:burcapp/burc_detay.dart';
import 'package:burcapp/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: listelenenBurc)));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headlineMedium,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.deepPurpleAccent,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
