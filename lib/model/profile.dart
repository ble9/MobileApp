enum Classification {
  freshman,
  sophmore,
  junior,
  senior,
  graduate,
}
enum Major {
  CS,
  SE,
  Other,
}
enum Language {
  Dart,
  Java,
  Cpp,
}

class Profile {
  String name;
  int age;
  Classification classification;
  Major major;
  Map Languages = {
    Language.Dart: false,
    Language.Java: false,
    Language.Cpp: false,
  };

  Profile(
      {this.name = '',
      this.age = 0,
      this.classification = Classification.freshman,
      this.major = Major.CS});
  Profile.clone(Profile p){
    this.name = p.name;
    this.age = p.age;
    this.classification = p.classification;
    this.major = p.major;
    this.Languages = Map.from(p.Languages);
  }
}
