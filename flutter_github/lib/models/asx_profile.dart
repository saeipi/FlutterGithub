class ASXProfile {
  ASXUser user;
  String token;
  int theme;
  ASXCache cache;
  String lastLogin;
  String locale;

  ASXProfile(
      {this.user,
        this.token,
        this.theme,
        this.cache,
        this.lastLogin,
        this.locale});

  ASXProfile.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new ASXUser.fromJson(json['user']) : null;
    token = json['token'];
    theme = json['theme'];
    cache = json['cache'] != null ? new ASXCache.fromJson(json['cache']) : null;
    lastLogin = json['lastLogin'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token'] = this.token;
    data['theme'] = this.theme;
    if (this.cache != null) {
      data['cache'] = this.cache.toJson();
    }
    data['lastLogin'] = this.lastLogin;
    data['locale'] = this.locale;
    return data;
  }
}

class ASXUser {
  String login;
  String avatarUrl;
  String type;
  String name;
  String company;
  String blog;
  String location;
  String email;
  bool hireable;
  String bio;
  int publicRepos;
  int followers;
  int following;
  String createdAt;
  String updatedAt;
  int totalPrivateRepos;
  int ownedPrivateRepos;

  ASXUser(
      {this.login,
        this.avatarUrl,
        this.type,
        this.name,
        this.company,
        this.blog,
        this.location,
        this.email,
        this.hireable,
        this.bio,
        this.publicRepos,
        this.followers,
        this.following,
        this.createdAt,
        this.updatedAt,
        this.totalPrivateRepos,
        this.ownedPrivateRepos});

  ASXUser.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    avatarUrl = json['avatar_url'];
    type = json['type'];
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    publicRepos = json['public_repos'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    totalPrivateRepos = json['total_private_repos'];
    ownedPrivateRepos = json['owned_private_repos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['avatar_url'] = this.avatarUrl;
    data['type'] = this.type;
    data['name'] = this.name;
    data['company'] = this.company;
    data['blog'] = this.blog;
    data['location'] = this.location;
    data['email'] = this.email;
    data['hireable'] = this.hireable;
    data['bio'] = this.bio;
    data['public_repos'] = this.publicRepos;
    data['followers'] = this.followers;
    data['following'] = this.following;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['total_private_repos'] = this.totalPrivateRepos;
    data['owned_private_repos'] = this.ownedPrivateRepos;
    return data;
  }
}

class ASXCache {
  bool enable;
  int maxAge;
  int maxCount;

  ASXCache({this.enable, this.maxAge, this.maxCount});

  ASXCache.fromJson(Map<String, dynamic> json) {
    enable = json['enable'];
    maxAge = json['maxAge'];
    maxCount = json['maxCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enable'] = this.enable;
    data['maxAge'] = this.maxAge;
    data['maxCount'] = this.maxCount;
    return data;
  }
}
