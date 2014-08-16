import 'package:polymer/polymer.dart';
import 'dart:html';

/**
 * A Polymer click counter element.
 */
@CustomTag('get-button')
class GetButton extends PolymerElement {
  
  GetButton.created() : super.created() {
  }

  void getCharacters() {
    String publicKey = "f9365680689beb942c2ce18a345f869c";
    String privateKey = "418128a583d228c8f572d930528364d295c1c292";
    int timeStamp = new DateTime.now().millisecondsSinceEpoch;
    String url = 'http://gateway.marvel.com:80/v1/public/characters?apikey=$publicKey';
    print("GET $url");
    HttpRequest.request(url)
      .then((HttpRequest res) => print(res));
    
  }
}

