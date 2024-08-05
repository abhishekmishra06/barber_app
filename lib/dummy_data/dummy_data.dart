import '../utils/components/book_mark.dart';

class DummyData {
  static const List<BookmarkItem> bookmarks = [
    BookmarkItem(
      duration: '10 min',
      imageUrl:
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      shopName: 'Salon One',
      location: '123 Street, City',
      rating: 4.5,
    ),
    BookmarkItem(
      duration: '10 min',
      imageUrl:
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      shopName: 'Sereniy',
      location: '123 Street, City',
      rating: 4.5,
    ),
    BookmarkItem(
      duration: '10 min',
      imageUrl:
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      shopName: 'Belle One',
      location: '123 Street, City',
      rating: 4.5,
    ),
    BookmarkItem(
      duration: '10 min',
      imageUrl:
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      shopName: 'Curls One',
      location: '123 Street, City',
      rating: 4.5,
    ),
  ];

  static List<String> imageUrls = [
    'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
    'https://picsum.photos/250?image=9',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://blog.ippon.fr/content/images/2023/09/RGFzaGF0YXJfRGV2ZWxvcGVyX092ZXJJdF9jb2xvcl9QR19zaGFkb3c-.png',
    'https://picsum.photos/seed/picsum/200/300',
    'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/200/300?random=1',
    'https://picsum.photos/200/300?random=2',
  ];

  static List<Map<String, String>> cancelledOrders = const [
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Cancelled",
      "title": 'Cancelled Order 1',
      "location": 'Location 1'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Cancelled",
      "title": 'Cancelled Order 2',
      "location": 'Location 2'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Cancelled",
      "title": 'Cancelled Order 3',
      "location": 'Location 3'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Cancelled",
      "title": 'Cancelled Order 4',
      "location": 'Location 4'
    },
  ];

  static List<Map<String, String>> completedOrders = const [
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Completed",
      "title": 'Completed Order 1',
      "location": 'Location 1'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Completed",
      "title": 'Completed Order 2',
      "location": 'Location 2'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Completed",
      "title": 'Completed Order 3',
      "location": 'Location 3'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Aloe Vera shampoo Hair Wash",
      "status": "Completed",
      "title": 'Completed Order 4',
      "location": 'Location 4'
    },
  ];

  static List<Map<String, dynamic>> upcomingOrders = const [
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Ouiff Haircut, Thin Shaving",
      "status": true,
      "title": 'Upcoming Order 1',
      "location": 'Location 1'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Ouiff Haircut, Thin Shaving",
      "status": false,
      "title": 'Upcoming Order 2',
      "location": 'Location 2'
    },
    {
      "imageurl":
          "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "date": "Dec 22 2024 - 10:00 AM",
      "description": "Ouiff Haircut, Thin Shaving",
      "status": false,
      "title": 'Upcoming Order 3',
      "location": 'Location 3'
    },
  ];

  static List<String> services = const [
    "Haircut",
    "Shave the Beard",
    "Facial",
    "Shave Mustache",
    "Hairstyle",
    "Hair Coloring"
  ];

  static List<Map<String, dynamic>> notifications = [
    {
      'title': "Payment Successful!",
      'description': "You have make a salon payment",
      'date': "Today",
    },
    {
      'title': "Payment Successful!",
      'description': "You have make a salon payment",
      'date': "Today",
    },
    {
      'title': "New Services Available!",
      'description': "Now you can search the nearest salon",
      'date': "Today",
    },
  ];

  static List<Map<String, dynamic>> salonList = [
    {
      'duration': '10 min',
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'shopName': 'Salon One',
      'location': '123 Street, City',
      'rating': 4.5,
    },
    {
      'duration': '15 min',
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'shopName': 'Salon Two',
      'location': '456 Avenue, City',
      'rating': 4.0,
    },
    {
      'duration': '10 min',
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'shopName': 'Salon three',
      'location': '123 Street, City',
      'rating': 4.5,
    },
    {
      'duration': '15 min',
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'shopName': 'Salon Four',
      'location': '456 Avenue, City',
      'rating': 4.0,
    },
  ];

  static List<Map<String, dynamic>> packages = [
    {
      'price': 1125,
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'offerDetail': 'Special Offer package valid only 12 Mar 2024',
      'offerName': 'Haircut & HairStyle',
    },
    {
      'price': 1125,
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'offerDetail': 'Special Offer package valid only 12 Mar 2024',
      'offerName': 'Haircut & HairStyle',
    },

    {
      'price': 1125,
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'offerDetail': 'Special Offer package valid only 12 Mar 2024',
      'offerName': 'Haircut & HairStyle',
    },
    {
      'price': 1125,
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'offerDetail': 'Special Offer package valid only 12 Mar 2024',
      'offerName': 'Haircut & HairStyle',
    },

    {
      'price': 1125,
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'offerDetail': 'Special Offer package valid only 12 Mar 2024',
      'offerName': 'Haircut & HairStyle',
    },
    {
      'price': 1125,
      'imageUrl':
          'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'offerDetail': 'Special Offer package valid only 12 Mar 2024',
      'offerName': 'Haircut & HairStyle',
    },
  ];



   static List<Map<String, String>> paymentMethods = [
    {
      'image': 'assets/paypal_logo.png',
      'name': 'PayPal',
    },
    {
      'image': 'assets/google_pay_logo.png',
      'name': 'Google Pay',
    },
    {
      'image': 'assets/apple_pay_logo.png',
      'name': 'Apple Pay',
    },
    {
      'image': 'assets/card_logo.png',
      'name': '.... .... .... 5685',
    },
  ];


   static List<Map<String, String>> service = [
      {'title': 'Haircut', 'trailing': '44 types'},
      {'title': 'Beard Trim', 'trailing': '20 types'},
      {'title': 'Shave', 'trailing': '30 types'},
      {'title': 'Hair Coloring', 'trailing': '20 types'},
      {'title': 'Facial', 'trailing': '44 types'},
      {'title': 'Head Massage', 'trailing': '10 types'},
    ];



}
