import 'package:flutter/material.dart';

class HomeKu extends StatefulWidget {
  const HomeKu({super.key});

  @override
  State<HomeKu> createState() => _HomeKuState();
}

class _HomeKuState extends State<HomeKu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROYAL GOLF DRIVING RANGE"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Container(
                height: 255.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello, Good Afternoon!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\n\nKami dengan penuh kebanggaan menyambut Anda di Aplikasi Royal Golf Driving Range, tempat di mana Anda dapat mengasah kemampuan golf Anda dalam lingkungan yang penuh kemewahan. Kami menawarkan fasilitas dan teknologi terbaik untuk membantu Anda mencapai potensi terbaik Anda dalam bermain golf.",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 0.0),
            child: Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf1.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf5.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf3.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf4.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 4.0),
            child: Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf2.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf6.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf7.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.grey,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/golf8.jpg'),
                        fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Container(
              height: 1000.0,
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\n\nSelamat datang di Royal Aplikasi Golf Driving Range, tempat di mana kecintaan Anda pada golf bertemu dengan kemewahan sejati. Kami adalah tim yang berkomitmen untuk membawa pengalaman bermain golf ke tingkat yang lebih tinggi dengan memadukan teknologi mutakhir dan fasilitas premium.",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                    Text(
                      "\n\nVisi kami adalah menjadi pilihan utama para pencinta golf yang mencari lokasi yang tak tertandingi untuk mengasah kemampuan golf mereka. Kami ingin menghadirkan pengalaman driving range yang tak hanya memenuhi harapan, tetapi juga melebihi ekspektasi Anda.",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                    Text(
                      "\n\nMisi kami adalah memberikan Anda akses yang tak tertandingi ke fasilitas golf berkualitas tinggi yang didukung oleh layanan terbaik. Kami berkomitmen untuk membuat bermain golf lebih mudah, lebih menarik, dan lebih mewah dari sebelumnya.",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                    Text(
                      "\n\nKami memegang teguh nilai-nilai seperti kualitas, keramahan, dan inovasi. Kami terus berusaha untuk memberikan pengalaman golf yang luar biasa di lokasi kami, sehingga Anda dapat benar-benar menikmati setiap saat.",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                    Text(
                      "\n\nDengan Aplikasi Royal Golf Driving Range, Anda akan menemukan fasilitas terbaik untuk melatih pukulan Anda, bermain golf bersama teman, atau hanya menikmati suasana mewah. Bergabunglah dengan kami dan menjadi bagian dari komunitas golf eksklusif kami.",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
