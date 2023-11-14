import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(left: 28, top: 70),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hallo, ',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: name,
                            style: const TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 70, right: 25),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/5.png'),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 240, left: 10),
              child: const Text(
                'Pokédex.',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 26, right: 26, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Pokemon',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 226, 225, 225),
                ),
              ),
            ),
            Container(padding: const EdgeInsets.all(15)),
            const Expanded(
              child: PokemonCard(
                image: 'assets/4.png',
                number: '#0023',
                name: 'Ekans',
                type: 'Poison',
                description:
                    "The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.",
              ),
            ),
            Container(padding: const EdgeInsets.all(8)),
            const Expanded(
              child: PokemonCard(
                image: 'assets/3.png',
                number: '#0032',
                name: 'Nidoran',
                type: 'Poison',
                description:
                    "The horn on a male Nidoran's forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.",
              ),
            ),
            Container(padding: const EdgeInsets.all(8)),
            const Expanded(
              child: PokemonCard(
                image: 'assets/2.png',
                number: '#0033',
                name: 'Nidorino',
                type: 'Poison',
                description:
                    "With a horn that's harder than diamond, this Pokémon goes around shattering boulders as it searches for a moon stone.",
              ),
            ),
            Container(padding: const EdgeInsets.all(8)),
            const Expanded(
              child: PokemonCard(
                image: 'assets/1.png',
                number: '#0034',
                name: 'Nidoking',
                type: 'Poison',
                description:
                    "When it goes on a rampage, it's impossible to control. But in the presence of a Nidoqueen it's lived with for a long time, Nidoking calms.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    required this.image,
    required this.number,
    required this.name,
    required this.type,
    required this.description,
  }) : super(key: key);

  final String image;
  final String number;
  final String name;
  final String type;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 355,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(padding: const EdgeInsets.all(15)),
          Column(
            children: [
              SizedBox(
                width: 200,
                height: 15,
                child: Row(
                  children: [
                    Text(
                      number,
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Container(padding: const EdgeInsets.all(7)),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(padding: const EdgeInsets.all(2)),
              SizedBox(
                width: 200,
                height: 18,
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        type,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(padding: const EdgeInsets.all(1.5)),
              SizedBox(
                width: 200,
                height: 58,
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// /// Kelas ini merupakan halaman utama yang menampilkan data setelah login berhasil.
// class HomePage extends StatelessWidget {
//   /// Ini adalah deklarasi widget 'HomePage'.
//   const HomePage({Key? key, required this.name}) : super(key: key);

//   final String? name;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//           child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   margin: const EdgeInsets.only(left: 28, top: 70),
//                   child: RichText(
//                     text: TextSpan(
//                       text: 'Hallo, ',
//                       style: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: name,
//                           style: const TextStyle(
//                               color: Colors.deepPurple,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(top: 70, right: 25),
//                 child: const CircleAvatar(
//                   radius: 25,
//                   backgroundImage: AssetImage('assets/5.png'),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             margin: const EdgeInsets.only(right: 240, left: 10),
//             child: const Text(
//               'Pokédex.',
//               style: TextStyle(
//                   color: Colors.deepPurple,
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 26, right: 26, top: 10),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search Pokemon',
//                 hintStyle: const TextStyle(
//                     color: Colors.grey,
//                     fontWeight: FontWeight.normal,
//                     fontSize: 18),
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide.none,
//                 ),
//                 filled: true,
//                 fillColor: const Color.fromARGB(255, 226, 225, 225),
//               ),
//             ),
//           ),
//           Container(padding: const EdgeInsets.all(15)),
//           Container(
//             padding: const EdgeInsets.all(10),
//             width: 355,
//             height: 120,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.1),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.deepPurple,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       'assets/4.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(padding: const EdgeInsets.all(15)),
//                 Column(
//                   children: [
//                     SizedBox(
//                       width: 200,
//                       height: 15,
//                       child: Row(
//                         children: [
//                           const Text(
//                             '#0023',
//                             style: TextStyle(color: Colors.grey, fontSize: 15),
//                           ),
//                           Container(padding: const EdgeInsets.all(7)),
//                           const Text(
//                             'Ekans',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(2)),
//                     SizedBox(
//                       width: 200,
//                       height: 18,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 55,
//                             height: 20,
//                             decoration: BoxDecoration(
//                                 color: Colors.deepPurple,
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: const Text(
//                               'Poison',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(1.5)),
//                     const SizedBox(
//                       width: 200,
//                       height: 60,
//                       child: Text(
//                         "The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.",
//                         style: TextStyle(fontSize: 12),
//                         textAlign: TextAlign.justify,
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(padding: const EdgeInsets.all(8)),
//           Container(
//             padding: const EdgeInsets.all(10),
//             width: 355,
//             height: 120,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.1),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.deepPurple,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       'assets/3.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(padding: const EdgeInsets.all(15)),
//                 Column(
//                   children: [
//                     SizedBox(
//                       width: 200,

//                       ///lebar box
//                       height: 15,

//                       ///tinggi box
//                       child: Row(
//                         children: [
//                           const Text(
//                             '#0032',
//                             style: TextStyle(color: Colors.grey, fontSize: 15),
//                           ),
//                           Container(padding: const EdgeInsets.all(7)),
//                           const Text(
//                             'Nidoran',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(2)),
//                     SizedBox(
//                       width: 200,
//                       height: 18,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 55,
//                             height: 20,
//                             decoration: BoxDecoration(
//                                 color: Colors.deepPurple,
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: const Text(
//                               'Poison',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(1.5)),
//                     const SizedBox(
//                       width: 200,
//                       height: 60,
//                       child: Text(
//                         "The horn on a male Nidoran's forehead contains a powerful poison. This is a very cautious Pokémon, always straining its large ears.",
//                         style: TextStyle(fontSize: 12),
//                         textAlign: TextAlign.justify,
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(padding: const EdgeInsets.all(8)),
//           Container(
//             padding: const EdgeInsets.all(10),
//             width: 355,
//             height: 120,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.1),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.deepPurple,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       'assets/2.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(padding: const EdgeInsets.all(15)),
//                 Column(
//                   children: [
//                     SizedBox(
//                       width: 200,
//                       height: 15,
//                       child: Row(
//                         children: [
//                           const Text(
//                             '#0033',
//                             style: TextStyle(color: Colors.grey, fontSize: 15),
//                           ),
//                           Container(padding: const EdgeInsets.all(7)),
//                           const Text(
//                             'Nidorino',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(2)),
//                     SizedBox(
//                       width: 200,
//                       height: 18,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 55,
//                             height: 20,
//                             decoration: BoxDecoration(
//                                 color: Colors.deepPurple,
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: const Text(
//                               'Poison',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(1.5)),
//                     const SizedBox(
//                       width: 200,
//                       height: 60,
//                       child: Text(
//                         "With a horn that's harder than diamond, this Pokémon goes around shattering boulders as it searches for a moon stone.",
//                         style: TextStyle(fontSize: 12),
//                         textAlign: TextAlign.justify,
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(padding: const EdgeInsets.all(8)),
//           Container(
//             padding: const EdgeInsets.all(10),
//             width: 355,
//             height: 120,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.1),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.deepPurple,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       'assets/1.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(padding: const EdgeInsets.all(15)),
//                 Column(
//                   children: [
//                     SizedBox(
//                       width: 200,
//                       height: 17,
//                       child: Row(
//                         children: [
//                           const Text(
//                             '#0034',
//                             style: TextStyle(color: Colors.grey, fontSize: 15),
//                           ),
//                           Container(padding: const EdgeInsets.all(7)),
//                           const Text(
//                             'Nidoking',
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(2)),
//                     SizedBox(
//                       width: 200,
//                       height: 18,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 55,
//                             height: 20,
//                             decoration: BoxDecoration(
//                                 color: Colors.deepPurple,
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: const Text(
//                               'Poison',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                           Container(padding: const EdgeInsets.all(4)),
//                           Container(
//                             width: 55,
//                             height: 20,
//                             decoration: BoxDecoration(
//                                 color: const Color.fromARGB(255, 222, 202, 19),
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: const Text(
//                               'Ground',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(padding: const EdgeInsets.all(1.5)),
//                     const SizedBox(
//                       width: 200,
//                       height: 58,
//                       child: Text(
//                         "When it goes on a rampage, it's impossible to control. But in the presence of a Nidoqueen it's lived with for a long time, Nidoking calms.",
//                         style: TextStyle(fontSize: 12),
//                         textAlign: TextAlign.justify,
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 4,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
