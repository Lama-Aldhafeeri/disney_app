class DisneyCharacter {
  Info? info;
  List<Data>? data;

  DisneyCharacter({this.info, this.data});

  DisneyCharacter.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['data'] != null) {
      data = <Data>[];

      for (final v in json['data']) {
        data?.add(Data.fromJson(v));
      }
    }
  }
}

class Info {
  int? count;
  int? totalPages;
  String? previousPage;
  String? nextPage;

  Info({this.count, this.totalPages, this.previousPage, this.nextPage});

  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    totalPages = json['totalPages'];
    previousPage = json['previousPage'];
    nextPage = json['nextPage'];
  }
}

class Data {
  int? iId;
  List<String>? films;
  List<String>? shortFilms;
  List<String>? tvShows;
  List<String>? videoGames;
  List<String>? parkAttractions;
  List<String>? allies;
  List<String>? enemies;
  String? sourceUrl;
  String? name;
  String? imageUrl;
  String? createdAt;
  String? updatedAt;
  String? url;
  int? iV;

  Data(
      {this.iId,
      this.films,
      this.shortFilms,
      this.tvShows,
      this.videoGames,
      this.parkAttractions,
      this.allies,
      this.enemies,
      this.sourceUrl,
      this.name,
      this.imageUrl,
      this.createdAt,
      this.updatedAt,
      this.url,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    if (json['films'] != null) {
      films = [];
      json['films'].forEach((v) {
        films?.add(v);
      });
    }
    if (json['shortFilms'] != null) {
      shortFilms = [];
      json['shortFilms'].forEach((v) {
        shortFilms?.add(v);
      });
    }
    tvShows = json['tvShows'].cast<String>();
    if (json['videoGames'] != null) {
      videoGames = [];
      json['videoGames'].forEach((v) {
        videoGames?.add(v);
      });
    }
    if (json['parkAttractions'] != null) {
      parkAttractions = [];
      json['parkAttractions'].forEach((v) {
        parkAttractions?.add(v);
      });
    }
    if (json['allies'] != null) {
      allies = [];
      json['allies'].forEach((v) {
        allies?.add(v);
      });
    }
    if (json['enemies'] != null) {
      enemies = [];
      json['enemies'].forEach((v) {
        enemies?.add(v);
      });
    }
    sourceUrl = json['sourceUrl'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    url = json['url'];
    iV = json['__v'];
  }
}
