class ProjectUtils {

  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;


  ProjectUtils({required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: "assets/images/Notes.jpg",
      title: "Notes App",
      subtitle: "Work your way with text, photos, tables, and todo lists, all in the same note",
    iosLink: "",
    androidLink: ""
  ),
  ProjectUtils(
      image:"assets/images/calculator.jpg" ,
      title: "Calculator App",
      subtitle: "A calculator app is a digital tool for performing calculations, eliminating the need for physical calculators. ",
    iosLink: "",
    androidLink: ""
  )
];