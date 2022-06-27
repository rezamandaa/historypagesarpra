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
          buildContent(),
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
        SizedBox(height: 20,),
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

  Widget buildContent() => Container(
    margin: const EdgeInsets.only(
        left: 24,
        top: 16,
        right: 24,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 99,
            width: 66,
          ),
          const SizedBox(
            width: 38,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "Lokasi : ruang 28",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "4 Feb, 12:16 pm",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
               "Monitor dan AC rusak, tidak bisa menyala. Ada...",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200, color: Colors.black
              ),
              ),
            ],
          ),
        ],
    ),      
  );

}