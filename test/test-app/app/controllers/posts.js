import { Controller } from '../../../../dist';

class PostsController extends Controller {
  params = [
    'title',
    'body',
    'isPublic',
    'authorId'
  ];
}

export default PostsController;
