/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/example_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'example': ExampleEndpoint()..initialize(server, 'example', null),
    };

    connectors['example'] = EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': MethodConnector(
          name: 'hello',
          params: {
            'name': ParameterDescription(
                name: 'name', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).hello(
              session,
              params['name'],
            );
          },
        ),
        'insertArticle': MethodConnector(
          name: 'insertArticle',
          params: {
            'article': ParameterDescription(
                name: 'article', type: Article, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).insertArticle(
              session,
              params['article'],
            );
          },
        ),
        'findArticles': MethodConnector(
          name: 'findArticles',
          params: {
            'keyword': ParameterDescription(
                name: 'keyword', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).findArticles(
              session,
              params['keyword'],
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
