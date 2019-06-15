class RepositoryModel {

  String _title;
  String _description;
  String _repoOwnerName;
  String _repoOwnerAvatarUrl;
  int _stars;

  RepositoryModel(this._title,this._description,this._repoOwnerName,this._repoOwnerAvatarUrl,this._stars);

  RepositoryModel.fromJson(Map<String,dynamic> map){
    _title = map['name'] ;
    _description = map['description'];
    _repoOwnerName = map["owner"]['login'];

    _repoOwnerAvatarUrl = map['avatar_url'];
    _stars = map["stargazers_count"];
  }

  String getTitle() {
    return _title != null ? _title : "" ;
  }

  String getDescription(){
    return _description != null ? _description : "";
  }

  String getRepoOwnerName(){
    return _repoOwnerName != null ? _repoOwnerName : "";
  }

  String getRepoOwnerAvatarUrl(){
    return _repoOwnerAvatarUrl != null ? _repoOwnerAvatarUrl : "";

  }

  int getStars(){
    return _stars != null ? _stars : 0;
  }


}