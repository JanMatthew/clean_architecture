class MagicWandModel {
  final String wood;
  final String core;
  final double length;

  MagicWandModel({required this.wood, required this.core, required this.length});

  factory MagicWandModel.fromJson(Map<String, dynamic> json){
    return MagicWandModel(
      wood: json['wood'] == "" ? "Sin Wood" : json['wood'],
      core: json['core'] == "" ? "Sin Core" : json['core'],
      length: json['length'] ?? 5
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'wood': wood, 
      'core': core,
      'length': length
    };
  }

}