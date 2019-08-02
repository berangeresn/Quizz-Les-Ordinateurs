import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:quizz_les_ordinateurs/models/question.dart';

class PageQuizz extends StatefulWidget {

  @override
  _PageQuizzState createState() => new _PageQuizzState();
}

class _PageQuizzState extends State<PageQuizz> {

  //la classe question
  Question question;

  //construction de la liste de questions du quizz
  List<Question> listeQuestions = [
    new Question(
        "Le 11 mai 1997, un ordinateur bat le champion d’échecs Garry Kasparov.",
        true,
        "La réponse est VRAI. Le 11 mai 1997, dans un match extrêmement serré et pour la première fois de l’histoire, un ordinateur (Deep Blue) a battu un champion du monde d’échecs.",
        'echecs.jpg'),
    new Question(
        "À ses débuts, le producteur de films d’animation Pixar fabriquait des ordinateurs pour le secteur médical.",
        true,
        'La réponse est VRAI. Avant de devenir producteur de films d’animation, Pixar fabriquait du matériel informatique dont le produit principal, le Pixar Image Computer, était destiné à l’imagerie médicale et aux laboratoires de recherche.',
        'pixar.jpg'),
    new Question("Silicon Valley est une banlieue de Los Angeles.", false,
        'La réponse est FAUX. Silicon Valley (Vallée du silicium) désigne le pôle des industries de pointe situé dans la partie sud de la région de la baie de San Francisco en Californie, sur la côte ouest des États-Unis.',
        'silicon.jpg'),
    new Question(
        "Bill Gates a commencé sa carrière en tant que livreur chez IBM.",
        false,
        'La réponse est FAUX. Bill Gates n’a jamais travaillé chez IBM, ni comme livreur. Il a abandonné ses études à la prestigieuse université Harvard pour fonder sa propre compagnie informatique, Microsoft.',
        'billgates.jpg'),
    new Question("Apple a mis en marché son premier iPad en 2005.", false,
        'La réponse est FAUX. Apple a lancé le premier iPad en 2010. En quelques années seulement, la vente de tablettes a devancé celle des ordinateurs de bureaux.',
        'ipad.jpg'),
    new Question(
        "Le transistor a été inventé au début de la Seconde Guerre mondiale pour permettre la communication entre les sous-marins.",
        false,
        'La réponse est FAUX. Le transistor a été inventé en 1947 (après la Seconde Guerre) par John Bardeen, William Shockley et Walter Brattain, chercheurs des Laboratoires Bell. Ils ont reçu le prix Nobel de physique en 1956 pour leur invention qui a permis de multiplier la performance des ordinateurs.',
        'transistor.jpg'),
    new Question(
        "Spacewar, un des premiers jeux vidéo, a été développé dans le but de tester les stratégies militaires du Pentagone.",
        false,
        'La réponse est FAUX. Spacewar, un des premiers jeux vidéo, a été développé en 1962 par un groupe d’étudiants du MIT pour tester les limites du premier mini-ordinateur de la société DEC.',
        'spacewar.png'),
    new Question(
        "Le nom de l’entreprise Google a pour origine le terme mathématique « googol ».",
        true,
        'La réponse est VRAI. Le nom de l’entreprise Google a pour origine le terme mathématique « googol » ou gogol en français, qui désigne un nombre commençant par 1 et suivi de cent zéros.',
        'google.jpg'),
    new Question(
        "La première version de Microsoft Windows, Windows 1.0 a connu un succès retentissant.",
        false,
        'La réponse est FAUX. Sorti le 20 novembre 1985, Windows 1.0 a connu un départ très discret. Windows 1.0 n’était pas un système d\'exploitation complet, mais plutôt un environnement graphique pour MS‑DOS.',
        'windows1.jpg'),
    new Question(
        "Le Commodore 64 est l’ordinateur de bureau le plus vendu au monde.",
        true,
        'La réponse est VRAI. Selon le Livre des records Guinness, le Commodore 64 est l’ordinateur de bureau le plus vendu à ce jour, même si sa production a cessé en 1994.',
        'commodore.jpeg'),
    new Question(
        "Alan Turing, considéré comme le fondateur de l’informatique, était Allemand.",
        false,
        'La réponse est FAUX. Alan Turing, considéré comme le fondateur de l’informatique, était Britannique. Il est né à Londres le 23 juin 1912. Il a joué un rôle majeur dans la victoire des forces alliées en décryptant les codes secrets des armées allemandes.',
        'alanturing.jpg'),
    new Question(
        "À l’origine, le langage BASIC s’adressait aux programmeurs chevronnés.",
        false,
        'La réponse est FAUX. Le langage BASIC a été conçu en 1964 au Dartmouth College pour permettre aux étudiants peu connaisseurs en informatique d’utiliser les ordinateurs. Le BASIC se voulait très simple : ses sept instructions devaient être enseignées en une demi-journée.',
        'basic.png'),
    new Question("Amazon a vendu son premier livre en ligne en 2001.", false,
        'La réponse est FAUX. Amazon.com a vendu son premier livre en ligne en 1995. Le titre du livre est Fluid Concepts And Creative Analogies: Computer Models Of The Fundamental Mechanisms Of Thought. Amazon a baptisé l’un de ses édifices du nom de «Wainwright building» en l’honneur du premier acheteur.',
        'amazon.jpg'),
    new Question(
        "Le premier nom de la souris était « indicateur de position x-y pour système d’affichage ».",
        true,
        'La réponse est VRAI. À l’origine, le nom utilisé pour désigner une souris était « x-y position indicator for a display system », qui se traduit par « indicateur de position x-y pour système d’affichage ».',
        'souris.jpg'),
    new Question(
        "On doit le @ dans les adresses courriel (emails) à une faute de frappe.",
        false,
        'La réponse est FAUX. Ray Tomlinson, le créateur du courrier électronique, a eu l’idée de séparer le nom d’utilisateur et le nom d’hôte par un caractère qui n’était utilisé dans aucun nom propre et qui pouvait servir de préfixe aux noms de domaine : le symbole @ (arobase).',
        'arobase.png'),
    new Question(
        "La première disquette mesurait 200 mm (8 po) de diamètre.", true,
        'La réponse est VRAI. Les premières disquettes, mises au point à la fin des années 1960, mesuraient 200 mm (8 po) de diamètre.',
        'disquettefirst.jpg'),
    new Question(
        "Le premier article vendu sur eBay était un pointeur laser défectueux.",
        true,
        'La réponse est VRAI. Le premier article vendu sur eBay était un pointeur laser défectueux et annoncé comme tel. Les enchères ont grimpé jusqu’à 14,83 \$.',
        'ebay.jpg'),
    new Question(
        "Le boulier permet de calculer des racines carrées et cubiques.", true,
        'La réponse est VRAI. Le boulier permet d’effectuer les quatre opérations de bases, ainsi que de trouver les racines carrées et cubiques.',
        'boulier.jpg'),
    new Question(
        "En 1981, les modems acoustiques permettaient aux ordinateurs de communiquer entre eux.",
        true,
        'La réponse est VRAI. En 1981, les premiers modems acoustiques, qui fonctionnaient sur des lignes téléphoniques, firent leur apparition. Ils permettaient des connexions d’utilisateur à utilisateur, à la vitesse de 300 bits à la seconde.',
        'modemacoustique.jpg'),
    new Question(
        "En 1984, les logiciels des ordinateurs Macintosh étaient fournis sur une série de disquettes 3,5 pouces.",
        true,
        'La réponse est VRAI. Dans les années 1980-1990, les logiciels des ordinateurs personnels étaient vendus sur une série de disquettes qu’il fallait installer les unes après les autres.',
        'macintosh.jpg'),
    new Question(
        "Le PDP-8, le premier mini-ordinateur, pesait plus de 45 kg (100 lb).",
        true,
        'La réponse est VRAI. En 1965, Digital Equipment Corporation (DEC) lance le PDP-8, le premier mini-ordinateur à connaître un succès commercial. L’ordinateur pesait plus de 45 kg (100 lb), et avait 32 ko de mémoire.',
        'pdp8.jpg'),
    new Question(
        "Le magazine Time a nommé « l’ordinateur » personnalité de l’année en 1982.",
        true,
        'La réponse est VRAI. En 1982, le magazine Time a accordé à « l’ordinateur » le titre de Personnalité de l’année.',
        'time.jpg'),
    new Question(
        "Steve Jobs a dévoilé le Macintosh durant un message publicitaire diffusé lors de la finale de la Série mondiale de baseball.",
        false,
        'La réponse est FAUX. Steve Jobs a lancé le Macintosh durant un message publicitaire diffusé lors du match du Super Bowl (match final de la saison de la Ligue nationale de football américain) de 1984. Cette publicité est encore considérée par plusieurs spécialistes comme la meilleure de tous les temps.',
        'pubmac.jpg'),
    new Question(
        "Le premier site web présentait des graphiques mathématiques fort détaillés.",
        false,
        'La réponse est FAUX. Le premier site web, réalisé par le CERN, ne présentait que du texte et des liens hypertextes.',
        'siteweb.jpg'),
    new Question(
        "L’UNIVAC, le premier ordinateur commercial américain, avait prédit l’élection d’Eisenhower.",
        true,
        'La réponse est VRAI. L’UNIVAC I (Universal Automatic Computer) est considéré comme le premier ordinateur commercial aux États-Unis. Alors que les sondages traditionnels annonçaient la défaite d’Eisenhower, l’UNIVAC avait vu juste en prédisant sa victoire à la présidence des États-Unis en 1952.',
        'univac.jpg'),
    new Question(
        "Bill Gates (Microsoft) a créé Pong, le premier jeu vidéo domestique.",
        false,
        'La réponse est FAUX. En 1975, c’est la compagnie Atari qui a lancé la version domestique du jeu Pong, le précurseur des jeux vidéo.',
        'pong.png')
  ];

  int index = 0;
  int score = 0;

  //définition du state initial, de la première page quizz
  @override
  void initState() {
    super.initState();
    question = listeQuestions[index];
  }

  @override
  Widget build(BuildContext context) {
    double taille = MediaQuery
        .of(context)
        .size
        .width * 0.65;
    return new Scaffold(
      appBar: new AppBar(
        title: new CustomText("Quizz : Les Ordinateurs", color: Colors.white,),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new CustomText("Question n°${index + 1}", color: Colors.grey[900], factor: 1.3,),
            new CustomText("Score : $score / $index", color: Colors.grey[900],),
            new Card(
              elevation: 10.0,
              child: new Container(
                height: taille,
                width: taille,
                //Image de la question
                child: Image.asset('quizz-ordinateurs/${question.imagePath}',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: CustomText(
                  question.question, color: Colors.grey[900], factor: 1.2),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buttonBool(true),
                buttonBool(false)
              ],
            )
          ],
        ),

      ),
    );
  }

  //Les boutons vrai et faux
  RaisedButton buttonBool(bool b) {
    return new RaisedButton(
        shape: StadiumBorder(),
        elevation: 10.0,
        onPressed: (() => dialogue(b)),
        color: Colors.teal,
        child: new CustomText((b) ? "Vrai" : "Faux", factor: 1.25, color: Colors.white,)
    );
  }

  //Traitements des réponses et dialogues
  Future<Null> dialogue(bool b) async {
    bool bonneReponse = (b == question.reponse);
    String vrai = "quizz-ordinateurs/vrai.png";
    String faux = "quizz-ordinateurs/faux.png";
    if (bonneReponse) {
      score++;
    }

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: new CustomText(
            (bonneReponse) ? "Bonne réponse !" : "Mauvaise réponse !",
            factor: 1.3, color: (bonneReponse) ? Colors.green : Colors.red,),
          contentPadding: EdgeInsets.all(20.0),
          children: <Widget>[
            new Image.asset((bonneReponse) ? vrai : faux, fit: BoxFit.cover,),
            new Container(
              height: 25.0,
            ),
            new CustomText(
              question.explication, factor: 1.1, color: Colors.grey[700],),
            new Container(
              height: 25.0,
            ),
            new RaisedButton(
              shape: StadiumBorder(),
              onPressed: () {
              Navigator.pop(context);
              questionSuivante();
            },
              child: new CustomText("Continuer", factor: 1.25, color: Colors.white,),
              color: Colors.teal,)
          ],
        );
      },
    );
  }

  Future<Null> alerte() async {
    return showDialog(context: context,
        barrierDismissible: false,
        //le context builder change de nom car nous ne sommes pas dans le même contexte que celui du Scaffold
        builder: (BuildContext buildcontext) {
          return new AlertDialog(
            title: new CustomText(
              "Fin du quizz !", color: Colors.teal, factor: 1.0,),
            contentPadding: EdgeInsets.all(10.0),
            content: new CustomText(
              "Votre score : $score / $index", color: Colors.grey[900],),
            actions: <Widget>[
              new FlatButton(
                  onPressed: (() {
                    Navigator.pop(buildcontext);
                    Navigator.pop(context);
                  }),
                  child: new CustomText(
                    "OK", factor: 1.25, color: Colors.teal,))
            ],
          );
        });
  }

  void questionSuivante() {
    if (index < listeQuestions.length - 1) {
      index++;
      setState(() {
        question = listeQuestions[index];
      });
    } else {
      alerte();
    }
  }
}