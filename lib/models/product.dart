//
//Ctrl+Alt+Arrow Keys for multi selection edit

class Product {
  String productID;
  String productTitle;
  String productDescription;
  double productPrice;
  bool isPriceDropped;
  double droppedPrice;
  String productSeller;
  int productStockCount;
  List<String> productPhotos;
  String productCoverPhoto; //int List productPhotos indexi?
  bool isFreeShipping;
  String productEstimatedShippingDate;
  bool isDiscounted;
  double productDiscount;
  String productDiscountDate;
  List<String> productCategories;
  double productTotalRating;
  List<String> productComments;
  //Comments/SoloRatings olmalı. her yorumda rating dahil??
  int productTotalLikesCount;
  List<String> productColors;
  List<String> productSizes;
  String productBrand; //??
  double productCreatedAtDate;
}

class Seller {
  String sellerID;
  String sellerTitle;
  String sellerCoverPhoto;
  double sellerTotalRating;
  List<String> sellerProductsList; //List<Product> olmalı??
  int sellerFollowersCount;
}

class User {
  String userID;
  String userName;
  String userEmail;
  String userPassword;
  String userCellPhone; //??
  String userProfilePhoto;
  List<String> userLikes; //List<Product> olmalı
  List<String> userBoards; //(İsmi olan bir List içinde ayrı ayrı Products List)
  List<String> userBag; //List<Product> olmalı
  List<String> userOrders;
  List<String> userAdresses; //Primary adress selection?
  List<String> userCreditCards; //sakat SSL lazım??
  List<String> userNotifications;
}
