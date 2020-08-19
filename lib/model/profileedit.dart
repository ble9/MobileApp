enum Classification{
  freshman,
  sophmore,
  junior,
  senior,
  graduate,
}
enum Major{
  CS,
  SE,
  Other,
}
enum Language{
  Dart,
  Java,
  Cpp,
}
class ProfileEdit{
  String name;
  int age;
  Classification classification;
  Major major;
  Map Languages = {
    Language.Dart:false,
    Language.Java: false,
  Language.Cpp: false,

  };
  ProfileEdit({
    this.name= '',
    this.age= 0,
    this.classification = Classification.freshman,
    this.major = Major.CS
});
}