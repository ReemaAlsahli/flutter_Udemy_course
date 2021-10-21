import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 20.0,
        toolbarHeight: 50.0,
        backgroundColor: Colors.blue,
        title: Row(children: [
          //image

          CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1548041347-390744c58da6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=792&q=80'),
            radius: 15.0,
            backgroundColor: Colors.white,
          ),

          SizedBox(
            width: 15.0,
          ),

          //text chate
          Text(
            'Chats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ]),
        actions: [
          //camera
          IconButton(
            icon: CircleAvatar(
              child: Icon(
                Icons.camera_alt,
                size: 20.0,
                color: Colors.black,
              ),
              radius: 30.0,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
          ),
          //edit
          IconButton(
            icon: CircleAvatar(
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.black,
              ),
              //backgroundImage: NetworkImage(),
              radius: 30.0,

              backgroundColor: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //search
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, size: 30.0, color: Colors.grey[50]),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Search', style: TextStyle(fontSize: 15.0, color: Colors.grey[50]))
                    ],
                  ),
                ),

                //story

                Container(
                  height: 120.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20.0,
                    ),
                    itemCount: 5,
                  ),
                ),
                //chate

                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChateItem(),
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                  ),
                  itemCount: 10,
                ),
              ],
            ),
          )),
    );
  }

  Widget buildStoryItem() => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1548041347-390744c58da6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=792&q=80'),
                ),
                CircleAvatar(
                  radius: 9.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Reema',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  Widget buildChateItem() => Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1548041347-390744c58da6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=792&q=80'),
              ),
              CircleAvatar(
                radius: 9.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reema ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${"dgdghttps://flutlab.io/editor/6efebe3d-3ade-4885-a263-c49588ba2332https://flutlab.io/editor/6efebe3d-3ade-4885-a263-c49588ba2332d"}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '${"02:00 pm"}',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ));
}
