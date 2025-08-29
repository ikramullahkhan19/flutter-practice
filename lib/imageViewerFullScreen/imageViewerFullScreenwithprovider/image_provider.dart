import 'package:flutter/foundation.dart';


class GalleryProvider with ChangeNotifier{
  final List<String> _images=[

'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e',
'https://images.unsplash.com/photo-1519125323398-675f0ddb6308',
'https://images.unsplash.com/photo-1516117172878-fd2c41f4a759',
'https://images.unsplash.com/photo-1532009324734-20a7a5813719',
'https://images.unsplash.com/photo-1541698444083-023c97d3f4b6',
'https://images.unsplash.com/photo-1508672019048-805c876b67e2',
'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
];
  List<String> get  images=>_images;

  String? _selectedImage;
  String? get selectedImage=>_selectedImage;

  void setSelectedImage(String image){

    _selectedImage=image;
    notifyListeners();

  }




}