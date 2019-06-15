import 'package:flutter/material.dart';

import 'package:github_trend/src/common/constants.dart';
import 'package:github_trend/src/models/repositoryModel.dart';

class RepositoryCardView extends StatelessWidget {
  final RepositoryModel repositoryModel;

  const RepositoryCardView(this.repositoryModel);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Material(
        elevation: 5.0,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            _buildTitle(repositoryModel.getTitle()),
            _buildBody(repositoryModel.getDescription()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildRepoOwnerWidget(repositoryModel.getRepoOwnerName()),
                  _buildRatingWidget(repositoryModel.getStars()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(String title){
      return Text(title,style: TextStyle(
          fontWeight: kTitleFontWeight,
          fontSize: kTitleSize,
        color: kTitleColor,
      ),);
  }
  Widget _buildBody(String description){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Text(description,style: TextStyle(
        fontWeight: kBodyFontWeight,
        fontSize: kBodySize,
        color: kBodyColor,
      ),),
    );
  }
  Widget _buildRepoOwnerWidget(String repoOwnerName){
    return Row(
      children: <Widget>[
        Icon(Icons.image),
        SizedBox(width: 4,),
        Text(repoOwnerName,style: TextStyle(
          fontWeight: kOwnerNameFontWeight,
          fontSize: kOwnerNameSize,
          color: kOwnerNameColor,
        ),),
      ],
    );
  }
  Widget _buildRatingWidget(int rating){
    return Row(
      children: <Widget>[
        Icon(Icons.star),
        SizedBox(width: 4,),
        Text(rating.toString(),style: TextStyle(
          fontWeight: kRatingLabelFontWeight,
          fontSize: kRatingLabelSize,
          color: kRatingLabelColor,
        ),),
      ],
    );
  }



}
