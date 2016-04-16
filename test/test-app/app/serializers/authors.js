import { Serializer } from '../../../../dist';

class AuthorsSerializer extends Serializer {
  attributes = [
    'name',
    'createdAt',
    'updatedAt'
  ];
}

export default AuthorsSerializer;
