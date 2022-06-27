import 'package:flutter/material.dart';
import 'package:sarpra/user/widgets/widgets.dart';

class HalamanRiwayat extends StatefulWidget {
  const HalamanRiwayat({Key? key}) : super(key: key);

  @override
  State<HalamanRiwayat> createState() => _HalamanRiwayatState();
}

class _HalamanRiwayatState extends State<HalamanRiwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          buildTop(),
          //buildContent(),
          BottomNavigation(),
        ],
      ),
    );
  }

  Widget buildTop() => Container(
    margin: const EdgeInsets.all(24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Riwayat Lapor', style: Theme.of(context).textTheme.headline3),
        SizedBox(height: 50,),
        Row(
          children: [
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.pink,
                ),
                onPressed: (){}, 
                child: Text(
                  'Semua',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.grey,
                ),
                onPressed: (){}, 
                child: Text(
                  'Tunggu',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.grey,
                ),
                onPressed: (){}, 
                child: Text(
                  'Proses',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.grey,
                ),
                onPressed: (){}, 
                child: Text(
                  'Selesai',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.grey,
                ),
                onPressed: (){}, 
                child: Text(
                  'Ditolak',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );

  Widget BuildContent() => Container();

}