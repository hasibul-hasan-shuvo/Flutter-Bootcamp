class NewsFeed {
  late PostRepository _repository;
  NewsFeed(PostRepository repository) {
    _repository = repository;
  }

  void getPostList() {
    _repository.getPostList();
  }
}

abstract class PostRepository {
  List<Post> getPostList();
}

class PostRemoteStorage extends PostRepository {
  @override
  List<Post> getPostList() {
    // Fetch post list from server
    return [];
  }
}

class PostLocalStorage extends PostRepository {
  @override
  List<Post> getPostList() {
    // Fetch post list from local storage
    return [];
  }
}

class Post {
  String title;
  String body;

  Post(this.title, this.body);
}
