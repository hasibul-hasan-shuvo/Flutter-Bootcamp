import ''

abstract class Post {
  final Author? author;
  final String? date;
  final Privacy? privacy;
  final String? description;
}


class ImagePost extends Post {
  final String imageUrl;

  ImagePost(Author author,
  String date,
  Privacy privacy,
  String description,
      String imageUrl,
  ) {
    this.author = author;
    this.date = date;
  }
}

class VideoPost extends Post {
  final String videoUrl;
  VideoPost(Author author,
      String date,
      Privacy privacy,
      String description,
      String videoUrl,
      ) {
    this.author = author;
    this.date = date;
  }
}

class PollPost extends Post {
  final String poll;
  PollPost(Author author,
      String date,
      Privacy privacy,
      String description,
      String poll,
      ) {
    this.author = author;
    this.date = date;
  }
}


class Author {
  final String name;
  final String imageUrl;
  final String phone;
}

abstract class PostSource {
  List<Post> getPostList();
}

class PostLocalSource extends PostSource{
  List<Post> getPostList() {


    List<Post> postList = [];


    postList.add(
        ImagePost(

        )
    );
    postList.add(
        VideoPost(

        )
    );
    postList.add(
        PollPost(

        )
    );
    postList.add(
        VideoPost(

        )
    );

    return postList;
  }
}

class PostRemoteSource extends PostSource {
  List<Post> getPostList() {

    List<Post> postList = [];


    postList.add(
        ImagePost(

        )
    );
    postList.add(
        VideoPost(

        )
    );
    postList.add(
        PollPost(

        )
    );
    postList.add(
        VideoPost(

        )
    );

    return postList;
  }
}

class PostAWSServer {
  getList();
}

class PostListHelper {
  final PostSource source;

  PostListHelper(this.source);

  List<Post> getPostList() {
    return source.getPostList();
  }
}


class PostRepository {

  List<Post> getPostList() {
    if (isOnline) {
      PostListHelper(PostRemoteSource());
      return postListHelper.getPostList();
    } else {
      PostListHelper(PostLocalSource());
      return postListHelper.getPostList();
    }
  }
}

void main() {
  PostRepsitory postRepository = PostRepository();

  postRepository.getPostList();
}