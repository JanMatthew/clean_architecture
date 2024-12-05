import 'package:dartz/dartz.dart';
import 'package:clean_architecture/domain/entities/character.dart';

abstract class CharacterRepository {
  Future<Either<Exception, List<Character>>> getAllCharacters();
}