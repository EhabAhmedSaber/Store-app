class Product
{
  final int id;
   final int price;
   final String title, subTitle, description, image;

  Product(
  {
   required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
}
      );
}

 List<Product>products=[
  Product(
  id: 1,
  price: 59,
  title: "سماعات لاسلكية",
  subTitle: "جودة صوت عاليه",
  image: "images/airpod.jpg",
description: "سماعه جميلة وصوتها واضح وشغاله بالبلوتوث"
),
  Product(
      id: 2,
      price: 1500,
      title: "كاميرا",
      subTitle: "جودة صور عاليه",
      image: "images/camera.jpg",
      description: "سماعه جميلة وصوتها واضح وشغاله بالبلوتوث"
),
  Product(
      id: 3,
      price: 69,
      title: "مايك",
      subTitle: "جودة صوت عاليه",
      image: "images/maik.jpg",
      description: "سماعه جميلة وصوتها واضح وشغاله بالبلوتوث"
  ),
  Product(
      id: 4,
      price: 59,
      title: "سماعات ",
      subTitle: "لساعات استماع طويله",
      image: "images/handfree.jpg",
      description: "سماعه جميلة وصوتها واضح وشغاله بالبلوتوث"
  ),
  Product(
      id: 5,
      price: 39,
      title: "نظاره ثلاثية الابعاد",
      subTitle: "لنقلك للعالم الافتراضي",
      image: "images/Var.jpg",
      description: "ةمكسيكمريىسىىه ىهخخىسشىؤ شنينىؤثحق كسميكمشةس "
  ),Product(
      id: 6,
      price: 1099,
      title: "جهاز تليفون",
      subTitle: "وأصبح للموبايل ضوء",
      image: "images/phone.jpg",
      description: "سماعه جميلة وصوتها واضح وشغاله بالبلوتوث"
  ),

];