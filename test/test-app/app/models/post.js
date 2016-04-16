import { Model } from '../../../../dist';

class Post extends Model {
  static attributes = {
    title: {
      type: 'text'
    },

    body: {
      type: 'text'
    },

    isPublic: {
      type: 'boolean',
      defaultValue: false
    }
  };

  static hasOne = {
    author: {
      model: 'author',
      reverse: 'posts'
    }
  };
}

export default Post;
