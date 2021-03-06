import 'package:final_app/src/api/issues_api_service.dart';
import 'package:final_app/src/components/home_page/components/feed_cards.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Widget _body;
  late String issueName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _body = Container();
    issueName = '';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
//TODO : Check the Position of Widgets in Stack
                Stack(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                        child: TextFormField(
                          onChanged: (value) {
                            issueName = value;
                          },
                          cursorColor: Colors.white,
                          cursorWidth: 1.5,
                          decoration: InputDecoration(
                            //suffixIcon: Icon(Icons.search),
                            contentPadding: const EdgeInsets.all(20),
                            labelText: 'Search Issue',
                            labelStyle: TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.deepPurple,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 15,
                      child: FlatButton(
                        minWidth: 70,
                        height: 50,
                        color: Colors.deepPurple.withOpacity(.4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          buildSearchIssuePage();
                        },
                        child: Icon(Icons.search_outlined),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: _body,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Future<void> buildSearchIssuePage() async {
    setState(() {
      _body = Center(child: CircularProgressIndicator());
    });
    List<Widget> searchIssuePageContents = <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Text(
          'Search Results',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
      ),
    ];

    List<Map<String, dynamic>> issues = await getIssuesByPhrase(issueName);
    if (issues.length == 0) {
      setState(() {
        _body = Center(
          child: Text(
            'No issues found!',
          ),
        );
      });
      return;
    }
    searchIssuePageContents.removeLast();

    for (var issue in issues) {
      searchIssuePageContents.add(MyCustomCard(
        postTitle: "issue Title",
          postContent: issue['description'] ?? "content",
          grievanceStatus: 'resolved',
          postTime: '2 hours ago',
          newtworkImageUrl: issue['images'].length > 0
              ? issue['images'][0]
              : 'https://static1.srcdn.com/wordpress/wp-content/uploads/2021/03/Among-Us-Random-Name-Generator.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5',
          department: issue['department']));
    }

    setState(() {
      _body = ListView.builder(
        itemCount: issues.length,
        itemBuilder: (context, index) {
          return searchIssuePageContents[index];
        },
      );
    });
  }
}
