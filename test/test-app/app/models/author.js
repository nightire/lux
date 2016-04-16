import { Model } from '../../../../dist';

class Author extends Model {
  static attributes = {
    name: {
      type: 'text'
    }
  };
}

export default Author;
