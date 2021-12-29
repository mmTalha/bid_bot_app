class Details {
  String imgUrl;
  String title;
  String desc;

  Details({required this.imgUrl, required this.title, required this.desc});
}

List<Details> details = [
  Details(
      imgUrl: 'image/onboardone.png',
      title: 'Welcome to  BidBong',
      desc:
      "Introducing Bidbong an easy to use auction application with a new concept like never before!"),
  Details(
      imgUrl: 'image/onboardthree.png',
      title: 'Find Best deals',
      desc:
      "Explore various things and interesting offers in one app. Get yours by playing at best prices!"),
  Details(
      imgUrl: 'image/onboardtwo.png',
      title: 'Get notified when special item on sale',
      desc:
      "You won't miss any special items that are auctioned every day. Let’s begin!"),
];