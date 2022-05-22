import 'Model/contribution_model.dart';
import 'Model/project_model.dart';
import 'Model/skill_model.dart';

List<ProjectsModel> myProjects = [
  ProjectsModel(
      projectDescription: "Whatsapp UI Clone",
      projectUrl: "https://github.com/mrasityilmaz/Whatsapp_UI_Clone_IOS",
      backplanPhotosAssetsPath: [
        "/wp/wp-0.png",
        "/wp/wp-1.png",
        "/wp/wp-2.png",
      ]),
  ProjectsModel(
      projectDescription: "Tap-War Game",
      projectUrl: "https://github.com/mrasityilmaz/Tap_War_Flutter",
      backplanPhotosAssetsPath: [
        "/tapwar/tapwar-0.png",
        "/tapwar/tapwar-1.png",
        "/tapwar/tapwar-2.png"
      ]),
  ProjectsModel(
      projectDescription: "Cloud App",
      projectUrl: "https://github.com/mrasityilmaz/CloudApp_Mobile",
      backplanPhotosAssetsPath: [
        "/cloud/cloud-0.png",
        "/cloud/cloud-1.png",
        "/cloud/cloud-2.png",
      ]),
  ProjectsModel(
      projectDescription: "Basic TODO",
      projectUrl: "https://github.com/mrasityilmaz/TODO_APP",
      backplanPhotosAssetsPath: [
        "/todo/todo-0.png",
        "/todo/todo-1.png",
        "/todo/todo-2.png"
      ]),
  ProjectsModel(
      projectDescription: "Instagram UI Clone",
      projectUrl: "https://github.com/mrasityilmaz/InstagramClone_SwiftUI",
      backplanPhotosAssetsPath: [
        "/instaclon/instaclon-0.png",
        "/instaclon/instaclon-1.png",
        "/instaclon/instaclon-2.png",
      ]),
  ProjectsModel(
      projectDescription: "Advanced TODO",
      projectUrl: "https://github.com/mrasityilmaz/Advanced-TODO",
      backplanPhotosAssetsPath: [
        "/advanced-todo/atodo-0.jpeg",
        "/advanced-todo/atodo-1.jpeg",
        "/advanced-todo/atodo-2.jpeg",
      ]),
  ProjectsModel(
      projectDescription: "PORTFOLIO PAGE",
      projectUrl: "https://github.com/mrasityilmaz/Advanced-TODO",
      backplanPhotosAssetsPath: [
        "/web/web-0.webp",
        "/web/web-1.webp",
        "/web/web-2.webp",
      ]),
];

List<ContributionModel> myContributions = [
  ContributionModel(
      myContributionsDesc:
          "Kullanıcın isteğe bağlı olarak konumu elle değiştirebilmesini sağlayan ekranı tasarladım.\nHarici paket ile sunulan DropDownSearch işlevini kendim yeniden oluşturdum ve arama performansını iyileştirdim.",
      appOrTaskName: "Muslim Guide",
      photoPaths: [
        "muslim-location0.webp",
        "muslim-location1.webp",
        "muslim-location2.webp"
      ]),
  ContributionModel(
      myContributionsDesc:
          "Video paylaşma özelliği olmayan bu pakete IOS için instagram'da video paylaşma özelliği ekledim ve Swift sürümlerinden dolayı verdiği hatayı düzelttim.",
      appOrTaskName: "md_insta_fb_share",
      photoPaths: []),
  ContributionModel(
      myContributionsDesc:
          "Sadece IconData alan ve özelleştirmeye izin vermeyen bu pakete hem direk Icon göndermek ve hemde style almayan text için style ekledim.",
      appOrTaskName: "flutter_slidable",
      photoPaths: []),
  ContributionModel(
      myContributionsDesc:
          "Repost App uygulamasının baştan sona geliştirmesinde rol aldım.\nState management için Provider ve Hive'ın özelliklerinden yararlandım.",
      appOrTaskName: "Repost App",
      photoPaths: [
        "repost-0.png",
        "repost-1.png",
        "repost-2.png",
        "repost-3.png",
        "repost-4.png",
        "repost-5.png",
        "repost-6.png",
        "repost-7.png",
        "repost-8.png",
        "repost-9.png",
        "repost-10.png",
        "repost-11.png",
        "repost-12.png",
        "repost-13.png",
        "repost-14.png",
        "repost-15.png",
        "repost-16.png",
      ]),
  ContributionModel(
      myContributionsDesc:
          "Muslim Guide uygulamasının İslami mesajlar ve alıntılar sayfasında kullanıcının paylaşabilmesi için sunulan alıntılar için sıfırdan bir düzenleme ekranı geliştirdim. Bu ekran ile kullanıcı paylaşacağı alıntı veya mesaj için tam kontrole sahip ve istediği şekilde düzenleyebiliyor.",
      appOrTaskName: "Muslim Guide",
      photoPaths: [
        "muslim-edit0.webp",
        "muslim-edit1.webp",
        "muslim-edit2.webp",
        "muslim-edit3.webp",
        "muslim-edit4.webp",
        "muslim-edit5.webp",
        "muslim-edit6.webp",
        "muslim-edit7.webp",
        "muslim-edit8.webp",
        "muslim-edit9.webp",
        "muslim-edit10.webp",
        "muslim-edit11.webp",
      ]),
  ContributionModel(
      myContributionsDesc:
          "Border Maker adlı uygulamanın paywall ekranını yaptım.",
      appOrTaskName: "Border Maker",
      photoPaths: ["border-paywall.webp"]),
  ContributionModel(
      myContributionsDesc: "Fontart adlı uygulamanın paywall ekranını yaptım.",
      appOrTaskName: "Fontart",
      photoPaths: ["fontart-paywall.webp"]),
  ContributionModel(
      myContributionsDesc:
          "Qibla Finder uygulamasının uygulamalar arası geçiş butonlarını,\nÇift tıklama ile beğenme ve basılı tutunca kopyalama işlevlerini yaptım.\nPaylaşım hatalarını ve daha bir çok hata düzelttim.",
      appOrTaskName: "Qibla Finder",
      photoPaths: ["qibla-like.webp"]),
  ContributionModel(
      myContributionsDesc: "Qibla Finder uygulaması için RateApp dialogu.",
      appOrTaskName: "Qibla Finder",
      photoPaths: ["qibla-rate.webp"]),
  ContributionModel(
      myContributionsDesc: "Repost adlı uygulaması için RateApp dialogu.",
      appOrTaskName: "Repost App",
      photoPaths: ["repost-rate.webp"]),
  ContributionModel(
      myContributionsDesc:
          "Muslim Guide uygulamasının dua isteme bölümü için baştan aşağıya yeni bir düzen oluşturdum.\nBeğeni sayıları ve beğenme işlevlerinin düzenlenmesi ve servis kontrolü için Provider altyapısını kullandım.",
      appOrTaskName: "Muslim Guide",
      photoPaths: ["muslim-pray0.webp", "muslim-pray1.webp"]),
  ContributionModel(
      myContributionsDesc: "Introduction ekranlarını yeniden düzenledim.",
      appOrTaskName: "Muslim Guide",
      photoPaths: ["muslim-intro1.webp", "muslim-intro2.webp"]),
];

List<SkillModel> mySkills = [
  SkillModel(skillName: "Flutter", skillLevel: 4),
  SkillModel(skillName: "C#", skillLevel: 4),
  SkillModel(skillName: "Python", skillLevel: 2),
  SkillModel(skillName: "Swift", skillLevel: 1),
  SkillModel(skillName: "MS SQL", skillLevel: 3),
  SkillModel(skillName: "Entity Framework", skillLevel: 4),
  SkillModel(skillName: "Design Pattern", skillLevel: 5),
  SkillModel(skillName: "C# - WinForms", skillLevel: 5),
];
