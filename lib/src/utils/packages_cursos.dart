class PackageModel1 {
  final String image, title, page, description;
  final int uid;
  PackageModel1({
    required this.uid,
    required this.image,
    required this.page,
    required this.title,
    required this.description,
  });
}

List<PackageModel1> favoritePackages1 = [
  PackageModel1(
    uid: 1,
    page: 'videoAulas',
    title: 'ECM',
    description: 'Os melhores sotwares para edição',
    image: 'assets/images/ECM.jpg',
  ),
  PackageModel1(
    uid: 2,
    page: 'winOls',
    title: 'WINOLS',
    description: 'Arquivos STG1 STG2 STG3 EGR DPF',
    image: 'assets/images/winols5.png',
  ),
];
