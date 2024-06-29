import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          width: 600,
          color: Colors.amberAccent,
            child: mainClass(),),
      ),
    ),
  ));
}


class mainClass extends StatefulWidget {
  const mainClass({super.key});

  @override
  State<mainClass> createState() => _mainClassState();
}

class _mainClassState extends State<mainClass> {

  List<String> askListe = ["Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?",
    "Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.",
    "Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.",
    "Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.",
    "Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!",
  ];
  List<String> paraListe = ["Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.",
  "Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin",
  "Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz",
  "Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.",
  "Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.",
  ];
  List<String> tavsiyeListe = ["Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme",
  "Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış",
  "Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla",
  "Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir",
  "Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et",];
  List<String> yedekAskListe = ["Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?",
    "Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.",
    "Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.",
    "Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.",
    "Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!",
  ];
  List<String> yedekParaListe = ["Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.",
    "Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin",
    "Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz",
    "Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.",
    "Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.",
  ];
  List<String> yedekTavsiyeListe = ["Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme",
    "Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış",
    "Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla",
    "Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir",
    "Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et",];
  Random random = new Random();
  String yazi = "Seçim Yapınız";
  TextEditingController tipDeger = TextEditingController();
  TextEditingController falDeger = TextEditingController();
  int sayi = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/img.png"),

          ),
        ),
        Container(
          color: Colors.amber.shade400,width: 150,height: 50,
          child: TextButton(onPressed: () {
            setState(() {
              if(askListe.isEmpty){
                yazi="Falınız Bitti";
              }
              else{
              sayi = random.nextInt(askListe.length);
              yazi=askListe[sayi];
              askListe.removeAt(sayi);}
            });
          }, child: Text("Aşk",style: TextStyle(color: Colors.black))),
        ),
        Container(
          color: Colors.amber.shade400,width: 150,height: 50,
          child: TextButton(onPressed: () {
            setState(() {
              if(paraListe.isEmpty){
                yazi="Falınız Bitti";
              }
              else {
                sayi = random.nextInt(paraListe.length);
                yazi = paraListe[sayi];
                paraListe.removeAt(sayi);
              }
            });
          }, child: Text("Para",style: TextStyle(color: Colors.black))),
        ),
        Container(
          color: Colors.amber.shade400,width: 150,height: 50,
          child: TextButton(onPressed: () {
            setState(() {
              if(tavsiyeListe.isEmpty){
                yazi="Falınız Bitti";
              }
              else {
                sayi = random.nextInt(tavsiyeListe.length);
                yazi = tavsiyeListe[sayi];
                tavsiyeListe.removeAt(sayi);
              }
            });
          }, child: Text("Tavsiye",style: TextStyle(color: Colors.black))),
        ),
        Container(
          child: Text("Falınız : $yazi"),),
        Container(
            color: Colors.amber.shade400,width: 150,height: 50,
            child: TextButton(onPressed: () {
          setState(() {
            askListe = List.from(yedekAskListe);
            paraListe = List.from(yedekParaListe);
            tavsiyeListe = List.from(yedekTavsiyeListe);
            yazi = "Yenilendi.";
          });
        }, child: Text("Doldur",style: TextStyle(color: Colors.black)))),
        Container(
          color: Colors.amber.shade400,
          child: TextField(controller: tipDeger,decoration: InputDecoration(hintText: "Fal Tipini Yazın")),
          width: 500,
          height: 50,
        ),
        Container(
          color: Colors.amber.shade400,
          child: TextField(controller: falDeger,decoration: InputDecoration(hintText: "Falı Yazınız")),
          width: 500,
          height: 50,
        ),
        Container(
          color: Colors.amber.shade400,width: 150,height: 50,
          child: TextButton(child: Text("Falı Ekle",style: TextStyle(color: Colors.black),),onPressed: () {
          setState(() {
            if(tipDeger.text.trim().toString().toLowerCase()=="aşk"){
              yedekAskListe.add(falDeger.text.toString());
              askListe.add(falDeger.text.toString());
              yazi = "Fal Eklendi.";
            }
            else if(tipDeger.text.trim().toString().toLowerCase()=="para"){
              yedekParaListe.add(falDeger.text.toString());
              paraListe.add(falDeger.text.toString());
              yazi = "Fal Eklendi.";
            }
            else if(tipDeger.text.trim().toString().toLowerCase()=="tavsiye"){
              yedekTavsiyeListe.add(falDeger.text.toString());
              tavsiyeListe.add(falDeger.text.toString());
              yazi = "Fal Eklendi.";
            }
            else{
              yazi = "Fal Tipini Yanlış Girdiniz (örn/aşk,para,tavsiye).";
            }
          });
        },),)
      ],
    );
  }
}
