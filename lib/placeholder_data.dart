class Ground {
  String name;
  String location;
  String distance;
  String image;
  Ground(this.name, this.location, this.distance, this.image);
}

class Grounds {
  List<Ground> myGrounds = [];
  Grounds() {
    myGrounds.add(
      Ground('Wankhede International Stadium', 'Mumbai, Maharashtra',
          'Navigate', 'images/g1.png'),
    );
    myGrounds.add(
      Ground('Narendra Modi Stadium', 'Ahmedabad, Gujrat', 'Only 4 Km Far',
          'images/g2.png'),
    );
    myGrounds.add(
      Ground('Jawaharlal Nehru Stadium', 'Delhi, Delhi NCR', 'Only 2 Km Far',
          'images/g3.png'),
    );
  }
}
