class PackageModel {
  final String image, title, page, description;
  final int uid;
  PackageModel({
    required this.uid,
    required this.image,
    required this.page,
    required this.title,
    required this.description,
  });
}

List<PackageModel> favoritePackages = [
  PackageModel(
    uid: 1,
    page: 'software',
    title: 'SOFTWARE',
    description: 'Os melhores sotwares para edição',
    image: 'assets/images/software.jpg',
  ),
  PackageModel(
    uid: 2,
    page: 'remap',
    title: 'REMAP',
    description: 'Arquivos STG1 STG2 STG3 EGR DPF',
    image: 'assets/images/remapall.jpg',
  ),
  PackageModel(
    uid: 3,
    page: 'cursos',
    title: 'CURSOS',
    description: 'WinOls ECM Titanium...',
    image: 'assets/images/Curso.jpg',
  ),
  PackageModel(
    uid: 4,
    page: 'pinagem',
    title: 'DIAGRAMAS E PINAGEM',
    description: 'Arquivos completos',
    image: 'assets/images/pinagem.png',
  ),
];
