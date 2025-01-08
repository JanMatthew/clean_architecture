class magicwand_model {
  final String wood;
  final String core;
  final double length;

  magicwand_model({required this.wood, required this.core, required this.length});

    Map<String, dynamic> toJson(){
    return{
      'wood': wood, 
      'core': core,
      'length': length
    };
  }

}