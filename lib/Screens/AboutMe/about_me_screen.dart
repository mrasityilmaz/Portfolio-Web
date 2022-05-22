import 'package:flutter/material.dart';
import 'dart:js' as js;

import '../../all_data.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AboutMeWidget(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: MyExperienceWidget(),
              ),
              Expanded(
                child: MySkillsWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MySkillsWidget extends StatelessWidget {
  const MySkillsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Yeteneklerim",
          style: Theme.of(context).textTheme.headline2,
        ),
        subtitle: Wrap(
          children: List.generate(
              mySkills.length,
              (index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ChoiceChip(
                      selectedColor: Colors.primaries[index + 1],
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5,
                      onSelected: (inf) {},
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      label: Text(mySkills[index].skillName,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black)),
                      selected: true))),
        ));
  }
}

class MyExperienceWidget extends StatelessWidget {
  const MyExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Deneyimlerim",
          style: Theme.of(context).textTheme.headline2,
        ),
        subtitle: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: GestureDetector(
                onTap: () {
                  js.context.callMethod('open', ['https://squamobi.com/']);
                },
                child: Text(
                  "Squamobi Technology",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              subtitle: Text(
                "02/2022 - 05/2022"
                "\n- Baştan sona uygulama geliştirme deneyimi."
                "\n- State Management-Provider."
                "\n- Yerelleştirme deneyimi."
                "\n- Ayarlar, lokasyon ve bildirim gibi temel mobil uygulama akışlarıyla ilgili deneyim."
                "\n- Firebase-Firebase Events."
                "\n- Veri depolama, yönetme.(Hive)",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: GestureDetector(
                onTap: () {
                  js.context
                      .callMethod('open', ['https://www.kapsamsaglik.com.tr/']);
                },
                child: Text(
                  "Kapsam Health Products",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              subtitle: Text(
                  "07/2021 - 10/2021"
                  "\nTıbbı cihazların kullanımı için masaüstü yazılım geliştirme.",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
          ],
        ));
  }
}

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Hakkımda",
        style: Theme.of(context).textTheme.headline2,
      ),
      subtitle: Text(
        "Merhaba, ben Muhammed Raşit Yılmaz.\nFırat Üniversitesi Yazılım Mühendisliği 4.sınıf öğrencisiyim ve kısa bir süre sonra mezun oluyorum."
        "\nAktif olarak bir yıldan daha uzun süredir Flutter ile projeler geliştiriyorum.\nEğitim hayatım boyunca Java, Python, C# ve Swift dilleri ile ilgilendim."
        "\nMobil uygulama geliştirme alanında gelişmek ve mobil teknolojiler üzerine kariyer yapmak istiyorum.",
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
