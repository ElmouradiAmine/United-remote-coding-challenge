import 'package:flutter/material.dart';

import 'package:github_trend/src/common/constants.dart';

class RepositoryCardView extends StatelessWidget {
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
            _buildTitle('Tensorflow'),
            _buildBody('Computation using data flow graphs for scalable machine learning'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildRepoOwnerWidget('tensorflow'),
                  _buildRatingWidget('5.1k'),
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
  Widget _buildBody(String text){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Text(text,style: TextStyle(
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
  Widget _buildRatingWidget(String rating){
    return Row(
      children: <Widget>[
        Icon(Icons.star),
        SizedBox(width: 4,),
        Text(rating,style: TextStyle(
          fontWeight: kRatingLabelFontWeight,
          fontSize: kRatingLabelSize,
          color: kRatingLabelColor,
        ),),
      ],
    );
  }



}
