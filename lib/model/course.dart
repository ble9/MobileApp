class Course {
  String number;
  String title;
  String prereq;
  String imageUrl;
  bool selected;
  Course({this.imageUrl, this.number, this.title, this.prereq, this.selected = false});
}

var courseList =  [
  Course (
    number:'MATH1234',
    title: 'basic math',
    prereq: 'nonee',
    imageUrl: 'https://somersetsentinel.com/wp-content/uploads/2018/08/Math-900x506.png'  ),
  Course (
    number:'DJ234',
    title: 'basic DJ tutorials',
    prereq: 'nonee',
    imageUrl: 'https://digitaldefynd.com/wp-content/uploads/2020/02/Best-dj-course-tutorial-class-certification-training-online-scaled.jpg'
  ),
  Course (
    number:'ART1234',
    title: 'Canvas Painting',
    prereq: 'nonee',
  imageUrl: 'https://image.shutterstock.com/image-photo/painting-art-school-260nw-634930130.jpg'),
  Course (
    number:'Music1234',
    title: 'basic music',
    prereq: 'nonee',
    imageUrl: 'https://cdn.vox-cdn.com/thumbor/2LOGLk4qS6lshi8vIL6_nRPzGqU=/0x0:1200x800/1200x800/filters:focal(504x304:696x496)/cdn.vox-cdn.com/uploads/chorus_image/image/64571777/1772904.0.jpg'),
];