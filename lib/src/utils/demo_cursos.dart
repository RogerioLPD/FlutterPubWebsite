class PackageModel2 {
  final String image, title, page, description;
  final int uid;
  PackageModel2({
    required this.uid,
    required this.image,
    required this.page,
    required this.title,
    required this.description,
  });
}

List<PackageModel2> favoritePackages2 = [
  PackageModel2(
    uid: 1,
    page: 'videoAulas',
    title: 'ECM TITANIUM',
    description:
        ' Curso completo com mais de 40 horas de aulas totalmente on-line aqui na plataforma!',
    image: 'assets/images/ECM.jpg',
  ),
  PackageModel2(
    uid: 2,
    page: 'winOls',
    title: 'WINOLS',
    description:
        'Curso completo com mais de 40 horas de aulas totalmente on-line aqui na plataforma!',
    image: 'assets/images/winols5.png',
  ),
];
