import 'package:flutter/material.dart';
import 'package:hydroplant/DetailScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hydro App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Hydro App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String keunggulanDesc = "Kelebihan sitem hidroponik antara lain:\n\nPenggunaan lahan lebih efisien\nTanaman beproduksi tanpa menggunakan tanah\nKuantitas dan kulkas produksi lebih tinggi dan lebih bersih\n Penggunaan pupuk dan air lebih efisien\n Pengendalian hama dan penyakit lebih mudah.";
  String keunggulanPic ="assets/keunggulan.jpeg";
  String manfaatDesc ="Hidroponik tidak tergantung pada tempat dan musim (luas tanah dan ketinggian tempat) karena dapat dikelola oleh manusia secara khusus dan kondisi lingkungan terkontrol.\n\nTeknik budidaya atau bertanam secara hidroponik dapat dilakukan oleh orang yang tidak memiliki lahan. Bahkan tanaman hidroponik dapat diterapkan oleh penghuni apartemen sempit.\n\nDapat menghasilkan mutu yang lebih baik.\n\nManusia dapat menghemat penggunaan pupuk karena pemberiannya diatur sesuai kebutuhan tanaman.\n\nBebas dari serangan hama dan penyakit yang berasal dari dalam tanah.\n\nPenanaman secara hidroponik dapat membuat produk bioteknologi sederhana dan baru yang dapat dimanfaatkan dalam kehidupan sehari-hari.\n\n";
  String manfaatPic ="assets/manfaat.jpg";
  String merawatDesc ="1. Dapat dilaksanakan oleh pria maupun wanita, baik tua maupun muda.\n\n2. Dapat dilaksanakan oleh pria maupun wanita, baik tua maupun muda.\n\n3. Bersihkan Wadah Media Tanam dan Larutan Nutrisi\n\n4.Jaga Sanitasi Lingkungan\n\n5.Cek Kondisi Tanaman Secara Berkala\n\n6.Cek Kondisi Media Tanam\n\n7.Buang dan Jauhkan Tanaman yang Sakit dari Tanaman yang Sehat";
  String merawatPic = "assets/merawat.jpg";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(

        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40.0,),
                SizedBox(width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Text('Hydro App',style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.left)
                      ),
                    )
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: keunggulanPic,description: keunggulanDesc,)));
                              },
                              child: Container(
                                width: 140,
                                child: Card(
                                  color: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                       Text('Keunggulan',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: merawatPic,description: merawatDesc,)));
                              },
                              child: Container(
                                width: 140,
                                child: Card(

                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text('Perawatan',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){

                                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> DetailScreen(image: manfaatPic,description: manfaatDesc,)));
                              },
                              child: Container(
                                width: 140,
                                child: Card(
                                  color: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text('Manfaat',style: TextStyle(fontSize: 11.0,color: Colors.black87,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    )
                ),
                SizedBox(
                  child: Container(child: Image.asset("assets/hidro.jpg",width: double.infinity,)),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 140,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Container(child: Image.asset("assets/bayam.jpg",width: 120,height: 100,)),
                                SizedBox(height: 10.0,),
                                Text("Bayam")
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 140,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Container(child: Image.asset("assets/selada.jpg",width: 120,height: 100,)),
                                SizedBox(height: 10.0,),
                                Text("Selada")
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          height: 140,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Container(child: Image.asset("assets/terong.jpg",width: 120,height: 100,)),
                                SizedBox(height: 10.0,),
                                Text("Terong")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Container(child: Image.asset("assets/kangkung.jpg",width: 120,height: 100,)),
                                SizedBox(height: 10.0,),
                                Text("Kangkung")
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          height: 140,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Container(child: Image.asset("assets/pokcoy.jpg",width: 120,height: 100,)),
                                SizedBox(height: 10.0,),
                                Text("Pokcoy")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Container(child: Image.asset("assets/caisim.jpg",width: 120,height: 100,)),
                                SizedBox(height: 10.0,),
                                Text("Caisim")
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.call),
        backgroundColor: Colors.green,
      ),
    );
  }
}

