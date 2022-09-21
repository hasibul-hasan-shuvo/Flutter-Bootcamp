class NewsFeed {
  late PostStorage _postStorage;
  NewsFeed(PostStorage postStorage) {
    _postStorage = postStorage;
  }

  void getPostList() {
    _postStorage.getPostListFromServer();
  }
}

class PostStorage {
  List<Post> getPostListFromServer() {
    // Fetch post list from server
    return [];
  }
}

class Post {
  String title;
  String body;

  Post(this.title, this.body);
}
