class PostEntity {
  final String? postImg;
  final String? profileUrl;
  final String? username;
  final String? userDesc;
  final String? date;
  final String? postDesc;

  PostEntity({
    this.postDesc,
    this.postImg,
    this.profileUrl,
    this.username,
    this.userDesc,
    this.date,
  });
}

class PostListClass {
  static final List<PostEntity> postData = [
    PostEntity(
      username: "Komal Khan",
      userDesc: "Digital Banking Officer",
      date: "2d",
      profileUrl: "assets/profile1.jpg",
      postImg: "assets/post_1.png",
      postDesc: "I love these equations.\n\nThis has been a beacon in my life for a very long time,\nespecially when long-term goals can look daunting.Just focusing on short-term steps and consistency can make me feel happier and more productive.The impact of making small consistent efforts throughout the year is presented well by math.Credit: James Clear (Atomic Habits)For downloadable ML/ AI/ Data Science learning materials, please check my previous posts."
    ),
    PostEntity(
      username: "Shahnoor Hussain",
      userDesc: "Search Engine Optim...",
      date: "12d",
      profileUrl: "assets/profile2.jpg",
      postImg: "assets/post_2.jpg",
        postDesc: "I love these equations.\n\nThis has been a beacon in my life for a very long time,\nespecially when long-term goals can look daunting.Just focusing on short-term steps and consistency can make me feel happier and more productive.The impact of making small consistent efforts throughout the year is presented well by math.Credit: James Clear (Atomic Habits)For downloadable ML/ AI/ Data Science learning materials, please check my previous posts."
    ),
    PostEntity(
      username: "Adnan Khan",
      userDesc: "Flutter Developer co-Fo...",
      date: "41d",
      profileUrl: "assets/profile3.jpg",
      postImg: "assets/post_3.jpg",
        postDesc: "I love these equations.\n\nThis has been a beacon in my life for a very long time,\nespecially when long-term goals can look daunting.Just focusing on short-term steps and consistency can make me feel happier and more productive.The impact of making small consistent efforts throughout the year is presented well by math.Credit: James Clear (Atomic Habits)For downloadable ML/ AI/ Data Science learning materials, please check my previous posts."

    ),
    PostEntity(
      username: "Amir Khan",
      userDesc: "Flutter Developer Fou...",
      date: "32d",
      profileUrl: "assets/profile4.jpg",
      postImg: "assets/post_4.jpg",
        postDesc: "I love these equations.\n\nThis has been a beacon in my life for a very long time,\nespecially when long-term goals can look daunting.Just focusing on short-term steps and consistency can make me feel happier and more productive.The impact of making small consistent efforts throughout the year is presented well by math.Credit: James Clear (Atomic Habits)For downloadable ML/ AI/ Data Science learning materials, please check my previous posts."
    ),
     ];
}