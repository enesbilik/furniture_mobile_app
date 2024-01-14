import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/models/product_model.dart';

final allCategoriesRiverpod =
    ChangeNotifierProvider((_) => AllCategoriesRiverpod());

class AllCategoriesRiverpod extends ChangeNotifier {
  int selectedCategoryIndex = 0;

  var categoryNameList = [
    "Hepsi",
    "Koltuk",
    "Sandalye",
    "Masa",
    "Yatak",
    "Sehpa"
  ];

  void setSelectedCategoryIndex(int newIndex) {
    selectedCategoryIndex = newIndex;
    notifyListeners();
  }

  var productData = {
    "Hepsi": [
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE848949.jpg",
        title: "Söderhamn",
        price: 10500,
        rating: 4.3,
        description:
            """Şık havadar görünümü seviyorsanız, derin geniş koltukları denemelisiniz. Kendi kişisel SÖDERHAMN kanepe kombinasyonunuzu yaratın, sonra oturun ve rahatlayın – tek başınıza veya tüm aile ile birlikte.

SÖDERHAMN serisi derin, alçak ve yumuşak bir oturuş ile ekstra destek sağlayan yumuşak ve konforlu sırt minderlerine sahiptir.

Yüksek ayakları ve ince çizgileri ile hafif, havadar tasarım ve alt kısımdaki elastik dokuma ve koltuk minderlerindeki yüksek esnekliğe sahip sünger sayesinde büyük rahatlık sağlar.

Kanepenin bölümleri bağımsız veya farklı şekillerde kombine edilerek size ve evinize uygun bir boyut ve şekil elde edilebilir.

Daha büyük bir kanepeye ihtiyacınız varsa, mevcut kombinasyonunuza bir veya iki bölüm ekleyebilirsiniz.

Kanepe planlayıcı ile mükemmel bir kombinasyon oluşturabilirsiniz. Bir araya getirin, parçalara ayırın ve sizin için doğru olana kadar tekrar bir araya getirin.

Yüksek ayaklar, mobilyaların altındaki zemini temizlemeyi kolaylaştırır.

Bu kılıf, farklı tonlarda dokunmuş derin bir dokuya sahip sağlam bir pamuklu ve polyester kumaş olan Fridtuna'dan yapılmıştır.

Kılıf, makinede yıkanabilir ve kolayca çıkarılıp takılabilir olduğu için temiz tutulması kolaydır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE848811.jpg",
        title: "Lack",
        price: 498,
        rating: 5,
        description:
            """Yerden tasarruf etmek ve gizli bir depolama alanı elde etmek için LACK tablolarını ayrı ayrı yada birlikte kullanın veya küçük olanı büyük olanın altına kaydırın. Montajı, taşınması ve evdeki diğer mobilyalarla uyum sağlaması kolaydır.

Bu LACK masalarını tek tek, birlikte veya örneğin kullanılmadığında yerden tasarruf etmek için küçük olanı büyük olanın altına kaydırarak iç içe geçme masalar olarak kullanabilirsiniz.

Masaların tasarımı, çeşitli ihtiyaçlar için kullanımlarını ve evinizdeki diğer mobilyalarla eşleştirmeyi kolaylaştırır.

Petek kağıt yapısı, masaları hafif tutarken güç katar. Bu onları eve getirmeyi, yerleştirmeyi ve evde hareket ettirmeyi kolaylaştırır.

LACK serisindeki diğer ürünlerle kombine edilebilir. Ayrıca KALLAX serisi ile de uyumludur.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE740087.jpg",
        title: "Vittsjö",
        price: 2999,
        rating: 3.7,
        description:
            """VITTSJÖ sehpaların sade ve düzgün tasarımı, açık ve havadar bir ifade yaratır. Bunları her zaman ayrı ayrı, birlikte kullanmayı seçebilir veya alttakini üstteki masanın altına kaydırabilirsiniz.

Masa tablaları temizlenmesi kolay ve leke tutmayan temperli camdan yapılmıştır.

Rafın bir tarafı vende diğer tarafı ise siyahtır, beğendiğiniz tarafı seçebilirsiniz.

Ayarlanabilir ayaklar sayesinde düzgün olmayan zeminlerde bile sabit durabilir.

İç içe geçerek yer kazanmanızı sağlar.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE870150.jpg",
        title: "Ekenaset",
        price: 6299,
        rating: 2.7,
        description:
            """EKENÄSET koltuk, 1950'lerin İskandinav tasarımından ilham alan odaya şık bir retro hava katıyor. Klasik görünüm evin her yerine iyi gider ve size uzun yıllar boyunca sağlam bir koltuk sunar.

İster okuyor olun, ister arkadaşlarınızla sosyalleşin, ister bir anlığına rahatlayın, sade hatlara sahip destekleyici rahatlık sağlar.

Ahşap çerçeve önce koyu kahverengi bir tonda boyandığı ve ardından ahşabın doğal damarlarını görünür kılan şeffaf vernikle kaplandığı için her bir koltuğun benzersiz bir ifadesi vardır.

Oturma yeri ve sırt kısmındaki yüksek esnekliğe sahip sünger, ayağa kalktığınızda koltuğun şeklini geri kazanmasını sağlar ve sağlam bir rahatlık için oturma yerinde zikzak yaylar ve arkada destekleyici kumaş ile tamamlanır.

Çerçeve dayanıklı masif ahşaptan yapıldığı için yıllarca sabit oturacaksınız. Ayrıca açılı sırtlık sayesinde rahat bir oturma pozisyonunun keyfini çıkarırsınız.

Masif ahşaptan uzun bacaklar, dağınıklığı önlemek için koltuğun altında saklanan şeyleri süpürmeyi veya bunlara ulaşmayı kolaylaştırır.

Zarif sabit kılıf, zamanla kalıcı olacak mükemmel bir uyum sağlar. Farklı kılıflar arasından seçim yapabilir ve kendinize ve evinize uygun olanı bulabilirsiniz.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE861048.jpg",
        title: "Viskafors",
        price: 2499,
        rating: 4,
        description:
            """VISKAFORS, odanın en göze çarpan parçası haline gelen bir koltuktur. Klasik tasarım zengin, davetkar şekillere sahiptir ve derin, yumuşak koltuğa oturduğunuzda koltuk size kucaklayıcı bir his verir.

Yumuşak, yuvarlak şekle ve geniş kolçaklara sahip klasik tasarım, VISKAFORS koltuğu herhangi bir oturma odasının en göze çarpan parçası haline getirir.

Cep yaylı derin koltuk gerçekten yumuşaktır ve koltuğa oturduğunuzda davetkar, kucaklayıcı bir his yaratır.

Usta işçilik ve mükemmel uyum, koltuğun her zaman en iyi yönünü göstereceği anlamına gelir.

Birkaç farklı kılıf ve ayak arasından 2 renkte seçim yapabilirsiniz.

Zarif bir şekilde eskiyen ve zamanla güzel bir patina oluşturan kaliteli deriden yapılmıştır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE868684.jpg",
        title: "Lidas Sefast",
        price: 999,
        rating: 2.8,
        description:
            """Genişletilmiş koltuk ve sırtlığın dinlendirici esnekliği sayesinde rahatça oturursunuz. Mendille anında temizlenir. Kişisel bir görünüm için favori renginizi seçin veya neden renkleri karıştırmıyorsunuz?

Sandalyenizin tarzına siz karar verin. Koltuk iskeleti farklı renklerde mevcuttur ve SEFAST çerçevesi beyaz, siyah ve krom kaplama renklerde mevcuttur.

Sadece 4 vida ile kolay montaj.

Üst üste konulabilen sandalyeler, kullanılmadığında yer kazandırır.

Oturma yerini değiştirerek evinize yeni bir görünüm kazandırabilirsiniz. SEFAST alt şasi, ayrı olarak satılan KARLPETTER veya SIGTRYGG oturma yerleri ile uyum sağlar.

Zemini aşınmaya karşı korumak için FIXA kendinden yapışkanlı zemin koruyucularla tamamlanabilir.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE736167.jpg",
        title: "Adde",
        price: 419,
        rating: 4.1,
        description:
            """Hafif, havadar ve üst üste yerleştirilebilir ADDE'yi temizlemek, dans etmek istediğinizde veya sadece biraz daha fazla alana ihtiyaç duyduğunuzda saklamak kolaydır. Ayrıca masanın etrafında ekstra misafiriniz olduğunda mükemmel bir ekstra sandalyedir.

Üst üste konulabilen sandalyeler, kullanılmadığında yer kazandırır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE704552.jpg",
        title: "Malm Lönset",
        price: 6099,
        rating: 3.1,
        description:
            """Her yönden güzel görünen masif ahşap kaplama sade bir tasarım. Karyolayı bağımsız olarak veya başlığı ile duvar önüne yerleştirebilirsiniz. Ekstra yatak takımları için yer gerekiyorsa, tekerlekli MALM karyola altı depolama kutuları ekleyebilirsiniz.

Ahşap kaplama, rengi ve dokusundaki benzersiz değişiklikleri sayesinde masif ahşap ile aynı görünüm, his ve güzelliği verir.

Bu çok yönlü karyola çerçevesi, seçtiğiniz yatak odası mobilyaları ve tekstiller ile harika görünecek.

Yüksek karyola başlığı sayesinde yatağınızda rahatça oturabilirsiniz - sadece bazı yastıkları arkanıza alın ve kitap okumak ya da TV izlemek için rahat bir yeriniz olsun.

Karyolanın altını temiz ve tozsuz tutmak için kolayca süpürebilirsiniz.

Ayarlanabilir yatak kenarları, farklı kalınlıklardaki yatakları kullanmanıza izin verir.

5 konfor bölgesine ayrılmış olan yapıştırılmış katmanlı 28 huş lata, vücut ağırlığınıza uyum sağlar ve yatağın esnekliğini artırır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE799350.jpg",
        title: "Malm Luröy",
        price: 5999,
        rating: 4.7,
        description:
            """Her iki taraftan da güzel görünen sade tasarımı sayesinde karyolayı bağımsız olarak veya başlığı ile birlikte duvar önüne yerleştirebilirsiniz. Ekstra yatak takımları için yer gerekiyorsa, tekerlekli MALM karyola altı depolama kutuları ekleyebilirsiniz.

Ayarlanabilir yatak kenarları, farklı kalınlıklardaki yatakları kullanmanıza izin verir.

Bu çok yönlü karyola çerçevesi, seçtiğiniz yatak odası mobilyaları ve tekstiller ile harika görünecek.

Yüksek karyola başlığı sayesinde yatağınızda rahatça oturabilirsiniz - sadece bazı yastıkları arkanıza alın ve kitap okumak ya da TV izlemek için rahat bir yeriniz olsun.

Karyolanın altını temiz ve tozsuz tutmak için kolayca süpürebilirsiniz.

Yapıştırma huş katmanlı 17 lata, vücut ağırlığınıza uyum sağlayarak yatağın esnekliğini de arttırır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE740334.jpg",
        title: "Fjallbo",
        price: 2599,
        rating: 4.7,
        description:
            """Metal, endüstriyel bir his katıyor ve masif ahşap, her bir mobilya parçasını benzersiz kılıyor. FJÄLLBO çalışma masası, sağlam ve modern bir tarz sevenler için uygundur. Yerleştirmesi kolaydır ve tekerlekler sayesinde kolayca hareket ettirebilirsiniz.

Bu rustik metal ve masif ahşap çalışma masası ile küçük bir alana sığacak, esnek ve işlevsel bir çalışma alanı elde edebilirsiniz.

Ahşap yaşayan doğal bir materyaldir ve doğal yapısı, rengi ve dokusundaki farklılıklar ahşap mobilyanın her bir parçasını benzersiz kılar.

Tekerlekler, dizüstü bilgisayar masasını kolayca taşımanıza ve istediğiniz yerde kullanmanıza olanak tanır.

Ayarlanabilir ayak masanın düz olmayan zeminlerde sabit durmasını sağlar.

Kendinden yapışkanlı kablo klipsleri kablolarınızı düzenli tutar ve gizler.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE872930.jpg",
        title: "Pinntorp",
        price: 3749,
        rating: 4.1,
        description:
            """Bu ahşap masada, 4 kişi rahatça oturabilir. İsveç mobilya geleneğinden ilham alan sade tasarım, sıcaklık ve karakter katarak bu masayı birlikte konuşmak ve harika anları paylaşmak için bir masa haline getiriyor.

Bu masa 4 kişiliktir ve küçük, düzgün boyutları, alan sınırlı olduğunda bile yerleştirmeyi kolaylaştırır.

Geleneksel kırmızı kaplamalı sağlam masif ahşap iskelet, İsveç mobilya mirasına bir övgüdür. Renk sıcaklık getirir ve kapalı günleri aydınlatır.

Görünür ahşap dokusu sandalyeye sıcaklık ve doğallık katar.

Basit ifade, sıcak renkler ve detaylara gösterilen özen ile birbirine bağlanan PINNTORP sandalyelerle güzel bir uyum sağlar.

Ahşap doğal bir materyaldir ve masa tablası ve ayaklardaki varyasyonlar her masayı benzersiz kılar.""",
      ),
    ],
    "Koltuk": [
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE848949.jpg",
        title: "Söderhamn",
        price: 10500,
        rating: 4.3,
        description:
            """Şık havadar görünümü seviyorsanız, derin geniş koltukları denemelisiniz. Kendi kişisel SÖDERHAMN kanepe kombinasyonunuzu yaratın, sonra oturun ve rahatlayın – tek başınıza veya tüm aile ile birlikte.

SÖDERHAMN serisi derin, alçak ve yumuşak bir oturuş ile ekstra destek sağlayan yumuşak ve konforlu sırt minderlerine sahiptir.

Yüksek ayakları ve ince çizgileri ile hafif, havadar tasarım ve alt kısımdaki elastik dokuma ve koltuk minderlerindeki yüksek esnekliğe sahip sünger sayesinde büyük rahatlık sağlar.

Kanepenin bölümleri bağımsız veya farklı şekillerde kombine edilerek size ve evinize uygun bir boyut ve şekil elde edilebilir.

Daha büyük bir kanepeye ihtiyacınız varsa, mevcut kombinasyonunuza bir veya iki bölüm ekleyebilirsiniz.

Kanepe planlayıcı ile mükemmel bir kombinasyon oluşturabilirsiniz. Bir araya getirin, parçalara ayırın ve sizin için doğru olana kadar tekrar bir araya getirin.

Yüksek ayaklar, mobilyaların altındaki zemini temizlemeyi kolaylaştırır.

Bu kılıf, farklı tonlarda dokunmuş derin bir dokuya sahip sağlam bir pamuklu ve polyester kumaş olan Fridtuna'dan yapılmıştır.

Kılıf, makinede yıkanabilir ve kolayca çıkarılıp takılabilir olduğu için temiz tutulması kolaydır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE870150.jpg",
        title: "Ekenaset",
        price: 6299,
        rating: 2.7,
        description:
            """EKENÄSET koltuk, 1950'lerin İskandinav tasarımından ilham alan odaya şık bir retro hava katıyor. Klasik görünüm evin her yerine iyi gider ve size uzun yıllar boyunca sağlam bir koltuk sunar.

İster okuyor olun, ister arkadaşlarınızla sosyalleşin, ister bir anlığına rahatlayın, sade hatlara sahip destekleyici rahatlık sağlar.

Ahşap çerçeve önce koyu kahverengi bir tonda boyandığı ve ardından ahşabın doğal damarlarını görünür kılan şeffaf vernikle kaplandığı için her bir koltuğun benzersiz bir ifadesi vardır.

Oturma yeri ve sırt kısmındaki yüksek esnekliğe sahip sünger, ayağa kalktığınızda koltuğun şeklini geri kazanmasını sağlar ve sağlam bir rahatlık için oturma yerinde zikzak yaylar ve arkada destekleyici kumaş ile tamamlanır.

Çerçeve dayanıklı masif ahşaptan yapıldığı için yıllarca sabit oturacaksınız. Ayrıca açılı sırtlık sayesinde rahat bir oturma pozisyonunun keyfini çıkarırsınız.

Masif ahşaptan uzun bacaklar, dağınıklığı önlemek için koltuğun altında saklanan şeyleri süpürmeyi veya bunlara ulaşmayı kolaylaştırır.

Zarif sabit kılıf, zamanla kalıcı olacak mükemmel bir uyum sağlar. Farklı kılıflar arasından seçim yapabilir ve kendinize ve evinize uygun olanı bulabilirsiniz.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE861048.jpg",
        title: "Viskafors",
        price: 2499,
        rating: 4,
        description:
            """VISKAFORS, odanın en göze çarpan parçası haline gelen bir koltuktur. Klasik tasarım zengin, davetkar şekillere sahiptir ve derin, yumuşak koltuğa oturduğunuzda koltuk size kucaklayıcı bir his verir.

Yumuşak, yuvarlak şekle ve geniş kolçaklara sahip klasik tasarım, VISKAFORS koltuğu herhangi bir oturma odasının en göze çarpan parçası haline getirir.

Cep yaylı derin koltuk gerçekten yumuşaktır ve koltuğa oturduğunuzda davetkar, kucaklayıcı bir his yaratır.

Usta işçilik ve mükemmel uyum, koltuğun her zaman en iyi yönünü göstereceği anlamına gelir.

Birkaç farklı kılıf ve ayak arasından 2 renkte seçim yapabilirsiniz.

Zarif bir şekilde eskiyen ve zamanla güzel bir patina oluşturan kaliteli deriden yapılmıştır.""",
      ),
    ],
    "Sandalye": [
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE868684.jpg",
        title: "Lidas Sefast",
        price: 999,
        rating: 2.8,
        description:
            """Genişletilmiş koltuk ve sırtlığın dinlendirici esnekliği sayesinde rahatça oturursunuz. Mendille anında temizlenir. Kişisel bir görünüm için favori renginizi seçin veya neden renkleri karıştırmıyorsunuz?

Sandalyenizin tarzına siz karar verin. Koltuk iskeleti farklı renklerde mevcuttur ve SEFAST çerçevesi beyaz, siyah ve krom kaplama renklerde mevcuttur.

Sadece 4 vida ile kolay montaj.

Üst üste konulabilen sandalyeler, kullanılmadığında yer kazandırır.

Oturma yerini değiştirerek evinize yeni bir görünüm kazandırabilirsiniz. SEFAST alt şasi, ayrı olarak satılan KARLPETTER veya SIGTRYGG oturma yerleri ile uyum sağlar.

Zemini aşınmaya karşı korumak için FIXA kendinden yapışkanlı zemin koruyucularla tamamlanabilir.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE736167.jpg",
        title: "Adde",
        price: 419,
        rating: 4.1,
        description:
            """Hafif, havadar ve üst üste yerleştirilebilir ADDE'yi temizlemek, dans etmek istediğinizde veya sadece biraz daha fazla alana ihtiyaç duyduğunuzda saklamak kolaydır. Ayrıca masanın etrafında ekstra misafiriniz olduğunda mükemmel bir ekstra sandalyedir.

Üst üste konulabilen sandalyeler, kullanılmadığında yer kazandırır.""",
      ),
    ],
    "Masa": [
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE740334.jpg",
        title: "Fjallbo",
        price: 2599,
        rating: 4.7,
        description:
            """Metal, endüstriyel bir his katıyor ve masif ahşap, her bir mobilya parçasını benzersiz kılıyor. FJÄLLBO çalışma masası, sağlam ve modern bir tarz sevenler için uygundur. Yerleştirmesi kolaydır ve tekerlekler sayesinde kolayca hareket ettirebilirsiniz.

Bu rustik metal ve masif ahşap çalışma masası ile küçük bir alana sığacak, esnek ve işlevsel bir çalışma alanı elde edebilirsiniz.

Ahşap yaşayan doğal bir materyaldir ve doğal yapısı, rengi ve dokusundaki farklılıklar ahşap mobilyanın her bir parçasını benzersiz kılar.

Tekerlekler, dizüstü bilgisayar masasını kolayca taşımanıza ve istediğiniz yerde kullanmanıza olanak tanır.

Ayarlanabilir ayak masanın düz olmayan zeminlerde sabit durmasını sağlar.

Kendinden yapışkanlı kablo klipsleri kablolarınızı düzenli tutar ve gizler.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE872930.jpg",
        title: "Pinntorp",
        price: 3749,
        rating: 4.1,
        description:
            """Bu ahşap masada, 4 kişi rahatça oturabilir. İsveç mobilya geleneğinden ilham alan sade tasarım, sıcaklık ve karakter katarak bu masayı birlikte konuşmak ve harika anları paylaşmak için bir masa haline getiriyor.

Bu masa 4 kişiliktir ve küçük, düzgün boyutları, alan sınırlı olduğunda bile yerleştirmeyi kolaylaştırır.

Geleneksel kırmızı kaplamalı sağlam masif ahşap iskelet, İsveç mobilya mirasına bir övgüdür. Renk sıcaklık getirir ve kapalı günleri aydınlatır.

Görünür ahşap dokusu sandalyeye sıcaklık ve doğallık katar.

Basit ifade, sıcak renkler ve detaylara gösterilen özen ile birbirine bağlanan PINNTORP sandalyelerle güzel bir uyum sağlar.

Ahşap doğal bir materyaldir ve masa tablası ve ayaklardaki varyasyonlar her masayı benzersiz kılar.""",
      ),
    ],
    "Yatak": [
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE704552.jpg",
        title: "Malm Lönset",
        price: 6099,
        rating: 3.1,
        description:
            """Her yönden güzel görünen masif ahşap kaplama sade bir tasarım. Karyolayı bağımsız olarak veya başlığı ile duvar önüne yerleştirebilirsiniz. Ekstra yatak takımları için yer gerekiyorsa, tekerlekli MALM karyola altı depolama kutuları ekleyebilirsiniz.

Ahşap kaplama, rengi ve dokusundaki benzersiz değişiklikleri sayesinde masif ahşap ile aynı görünüm, his ve güzelliği verir.

Bu çok yönlü karyola çerçevesi, seçtiğiniz yatak odası mobilyaları ve tekstiller ile harika görünecek.

Yüksek karyola başlığı sayesinde yatağınızda rahatça oturabilirsiniz - sadece bazı yastıkları arkanıza alın ve kitap okumak ya da TV izlemek için rahat bir yeriniz olsun.

Karyolanın altını temiz ve tozsuz tutmak için kolayca süpürebilirsiniz.

Ayarlanabilir yatak kenarları, farklı kalınlıklardaki yatakları kullanmanıza izin verir.

5 konfor bölgesine ayrılmış olan yapıştırılmış katmanlı 28 huş lata, vücut ağırlığınıza uyum sağlar ve yatağın esnekliğini artırır.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE799350.jpg",
        title: "Malm Luröy",
        price: 5999,
        rating: 4.7,
        description:
            """Her iki taraftan da güzel görünen sade tasarımı sayesinde karyolayı bağımsız olarak veya başlığı ile birlikte duvar önüne yerleştirebilirsiniz. Ekstra yatak takımları için yer gerekiyorsa, tekerlekli MALM karyola altı depolama kutuları ekleyebilirsiniz.

Ayarlanabilir yatak kenarları, farklı kalınlıklardaki yatakları kullanmanıza izin verir.

Bu çok yönlü karyola çerçevesi, seçtiğiniz yatak odası mobilyaları ve tekstiller ile harika görünecek.

Yüksek karyola başlığı sayesinde yatağınızda rahatça oturabilirsiniz - sadece bazı yastıkları arkanıza alın ve kitap okumak ya da TV izlemek için rahat bir yeriniz olsun.

Karyolanın altını temiz ve tozsuz tutmak için kolayca süpürebilirsiniz.

Yapıştırma huş katmanlı 17 lata, vücut ağırlığınıza uyum sağlayarak yatağın esnekliğini de arttırır.""",
      ),
    ],
    "Sehpa": [
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/2000_2000/PE848811.jpg",
        title: "Lack",
        price: 498,
        rating: 5,
        description:
            """Yerden tasarruf etmek ve gizli bir depolama alanı elde etmek için LACK tablolarını ayrı ayrı yada birlikte kullanın veya küçük olanı büyük olanın altına kaydırın. Montajı, taşınması ve evdeki diğer mobilyalarla uyum sağlaması kolaydır.

Bu LACK masalarını tek tek, birlikte veya örneğin kullanılmadığında yerden tasarruf etmek için küçük olanı büyük olanın altına kaydırarak iç içe geçme masalar olarak kullanabilirsiniz.

Masaların tasarımı, çeşitli ihtiyaçlar için kullanımlarını ve evinizdeki diğer mobilyalarla eşleştirmeyi kolaylaştırır.

Petek kağıt yapısı, masaları hafif tutarken güç katar. Bu onları eve getirmeyi, yerleştirmeyi ve evde hareket ettirmeyi kolaylaştırır.

LACK serisindeki diğer ürünlerle kombine edilebilir. Ayrıca KALLAX serisi ile de uyumludur.""",
      ),
      ProductModel(
        imageUrl: "https://image-ikea.mncdn.com/urunler/500_500/PE740087.jpg",
        title: "Vittsjö",
        price: 2999,
        rating: 3.7,
        description:
            """VITTSJÖ sehpaların sade ve düzgün tasarımı, açık ve havadar bir ifade yaratır. Bunları her zaman ayrı ayrı, birlikte kullanmayı seçebilir veya alttakini üstteki masanın altına kaydırabilirsiniz.

Masa tablaları temizlenmesi kolay ve leke tutmayan temperli camdan yapılmıştır.

Rafın bir tarafı vende diğer tarafı ise siyahtır, beğendiğiniz tarafı seçebilirsiniz.

Ayarlanabilir ayaklar sayesinde düzgün olmayan zeminlerde bile sabit durabilir.

İç içe geçerek yer kazanmanızı sağlar.""",
      ),
    ],
  };
}
