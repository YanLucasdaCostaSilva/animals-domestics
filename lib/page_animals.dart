import 'package:flutter/material.dart';
import './page_indicator.dart';
import './page_body.dart';

class DogPage extends StatefulWidget {
  const DogPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StapFormState();
  }
}

class _StapFormState extends State<DogPage> {
  final PageController _dogPageController = PageController();
  int _page = 0;

  List<Widget> pagesList = [
    pageBoydy(
      'http://www.pixelstalk.net/wp-content/uploads/2016/08/Cute-Puppies-Dog-Wallpaper.jpg',
      'Cachorro',
      'São animais extremamente fieis, companheiros, têm o instinto de caça e proteção, são inteligentes e podem ser treinados para seguir diversos comandos, possuem um olfato afiado e uma visão noturna superior, tornando-os eficazes em caças.',
      descriptionColor:
          const Color.fromARGB(255, 10, 10, 10), // Cor da descrição do cachorro
    ),
    pageBoydy(
      'https://wallup.net/wp-content/uploads/2019/09/364278-kittens-cat-cats-kittens-baby-cute-31.jpg',
      'Gato',
      'Os gatos são famosos por sua personalidade independente, embora possam ser bastante afetuosos com os donos. São animais de estimação de fácil adaptação em ambientes internos, gostam de explorar, mas também podem ser muito tranquilos, aproveitando longos cochilos durante o dia.',
      descriptionColor:
          const Color.fromARGB(255, 10, 10, 10), // Cor da descrição do gato
    ),
    pageBoydy(
      'http://1.bp.blogspot.com/-C53-VKWj9LY/UMhhvlrTCxI/AAAAAAAATNE/K8Nq5Yzovlw/s1600/peixe-palhaco-3.jpg',
      'Peixe',
      'Peixes são uma das opções mais populares para aquários domésticos, pois exigem menos interação direta. Com diversas espécies de cores vibrantes e comportamentos únicos, eles são visualmente agradáveis e podem ser relaxantes de observar.',
      descriptionColor:
          const Color.fromARGB(255, 10, 10, 10), // Cor da descrição do peixe
    ),
    pageBoydy(
      'https://s3.amazonaws.com/media.wikiaves.com.br/images/5214/4125055g_1d495d17a9f5749ed677354d916ea756.jpg',
      'Pássaro',
      'Papagaios, canários e outros pássaros de estimação são animados e podem até aprender sons e palavras. São animais sociáveis, gostam de atenção e interação, e muitos proprietários se divertem treinando-os para responder a comandos ou sons específicos.',
      descriptionColor:
          const Color.fromARGB(255, 10, 10, 10), // Cor da descrição do pássaro
    ),
    pageBoydy(
      'http://3.bp.blogspot.com/-HzOco-WRUCk/T74WkVg-b9I/AAAAAAAAGKA/7pgL7DnecW0/s1600/brown_hamster.jpg',
      'Hamster',
      'Pequenos e fáceis de cuidar, os hamsters são populares, especialmente entre crianças, devido ao seu tamanho compacto e comportamento curioso. Eles são ativos principalmente à noite, o que os torna interessantes de observar enquanto exploram e usam rodinhas para correr.',
      descriptionColor:
          const Color.fromARGB(255, 10, 10, 10), // Cor da descrição do hamster
    ),
    pageBoydy(
      'https://blog.casadoprodutor.com.br/wp-content/uploads/2019/10/coelho-1180x786.jpg',
      'Coelho',
      'Os coelhos são conhecidos pela aparência adorável e são bastante sociáveis quando tratados com cuidado. Podem ser mantidos em espaços internos ou externos, sendo relativamente fáceis de cuidar. São animais dóceis e gostam de interagir, principalmente se acostumados desde filhotes.',
      descriptionColor:
          const Color.fromARGB(255, 10, 10, 10), // Cor da descrição do coelho
    ),
    pageBoydy(
      'https://www.tiendanimal.pt/blog/wp-content/uploads/2020/05/Caracter%C3%ADsticas-do-porquinho-da-%C3%ADndia-o-que-sabe-sobre-eles_.jpg',
      'Porquinho da Índia',
      'Os porquinhos-da-índia são pequenos, dóceis e carinhosos, ideais para quem procura um animal de estimação tranquilo. Geralmente vivem em gaiolas, mas gostam de passar um tempo fora para explorar e interagir com seus donos. São sociáveis, se comunicam por sons e podem formar laços fortes com seus cuidadores.',
      descriptionColor: const Color.fromARGB(
          255, 10, 10, 10), // Cor da descrição do porquinho da Índia
    ),
  ];

  void _changeStep(bool nextPage) {
    if (_page < 7 && nextPage) {
      setState(() {
        _page++;
      });
      _dogPageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (_page > 0 && !nextPage) {
      setState(() {
        _page--;
      });
      _dogPageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animais domésticos'),
      ),
      body: PageView.builder(
        controller: _dogPageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: pagesList.length,
        itemBuilder: (BuildContext context, int index) {
          return pagesList[index];
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), // Adiciona espaçamento horizontal
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () => _changeStep(false),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.blue, // Cor de fundo corrigida
                shadowColor: Colors.black, // Cor da sombra
              ),
              child: const Text(
                'Anterior',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: [
                pageIndicator(_page == 0),
                pageIndicator(_page == 1),
                pageIndicator(_page == 2),
                pageIndicator(_page == 3),
                pageIndicator(_page == 4),
                pageIndicator(_page == 5),
                pageIndicator(_page == 6),
                pageIndicator(_page == 7),
              ],
            ),
            ElevatedButton(
              onPressed: () => _changeStep(true),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.blue, // Cor de fundo corrigida
                shadowColor: Colors.black, // Cor da sombra
              ),
              child: const Text(
                'Próximo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
