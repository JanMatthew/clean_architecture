import 'package:clean_architecture/data/models/magicwand_model.dart';
class CharacterModel {
  final String name;
  final String house;
  final String image;
  final MagicWandModel wand;

  CharacterModel({required this.name, required this.house, required this.image,required this.wand});

  factory CharacterModel.fromJson(Map<String, dynamic> json){
    return CharacterModel(
      name: json['name'],
      house: json['house'] ?? 'Unknown',
      image: json['image']== ""
            ? 'https://www.stickkar.in/cdn/shop/products/Harry_Potter_Title_Sticker.jpg'
            : json['image'],
      wand: MagicWandModel.fromJson(json['wand']));
  }

  Map<String, dynamic> toJson(){
    return{
      'name': name, 
      'house': house,
      'image': image,
      'wand': wand
    };
  }
}
