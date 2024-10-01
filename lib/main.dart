// membuat card aestetic
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showCard = true; // Set to false to show Stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(child: showCard ? _buildCard() : _buildStack()),
      ),
    );
  }

  // #docregion card
  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Negaroa Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City club, Bali United'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('kazee@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
  // #enddocregion card

  // #docregion stack
  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/pic.jpg'),
          radius: 100,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
// #enddocregion stack
}






// membuat card list
// import 'package:flutter/material.dart';

// class ListDemo extends StatelessWidget {
//   const ListDemo({super.key, required this.type});

//   final ListDemoType type;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: const Text('List demo'),
//         ),
//         body: Scrollbar(
//           child: ListView(
//             restorationId: 'list_demo_list_view',
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             children: [
//               for (var index = 1; index < 21; index++)
//                 ListTile(
//                   leading: ExcludeSemantics(
//                     child: CircleAvatar(child: Text('$index')),
//                   ),
//                   title: Text('Item $index'),
//                   subtitle: type == ListDemoType.twoLine
//                       ? const Text('Secondary text')
//                       : null,
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// enum ListDemoType {
//   oneLine,
//   twoLine,
// }

// void main() {
//   runApp(const ListDemo(type: ListDemoType.twoLine));
// }











// membuat card
// import 'package:flutter/material.dart';

// enum CardType {
//   standard,
//   tappable,
//   selectable,
// }

// class TravelDestination {
//   const TravelDestination({
//     required this.assetName,
//     required this.title,
//     required this.description,
//     required this.city,
//     required this.location,
//     this.cardType = CardType.standard,
//   });

//   final String assetName;
//   final String title;
//   final String description;
//   final String city;
//   final String location;
//   final CardType cardType;
// }

// const List<TravelDestination> _destinations = [
//   TravelDestination(
//     assetName: 'assets/images/foto1.jpg',
//     title: 'Top 10 Cities to Visit in Tamil Nadu',
//     description: 'Number 10',
//     city: 'Thanjavur',
//     location: 'Thanjavur, Tamil Nadu',
//   ),
//   TravelDestination(
//     assetName: 'assets/images/foto2.jpg',
//     title: 'Artisans of Southern India',
//     description: 'Silk Spinners',
//     city: 'Chettinad',
//     location: 'Sivaganga, Tamil Nadu',
//     cardType: CardType.tappable,
//   ),
//   TravelDestination(
//     assetName: 'assets/images/foto3.jpg',
//     title: 'Brihadisvara Temple',
//     description: 'Temples',
//     city: 'Thanjavur',
//     location: 'Thanjavur, Tamil Nadu',
//     cardType: CardType.selectable,
//   ),
// ];

// class TravelDestinationItem extends StatelessWidget {
//   const TravelDestinationItem({
//     super.key,
//     required this.destination,
//     this.shape,
//   });

//   // Height that allows for all the Card's contents
//   // to fit comfortably within the card.
//   static const double height = 360;
//   final TravelDestination destination;
//   final ShapeBorder? shape;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           children: [
//             const SectionTitle(title: 'Normal'),
//             SizedBox(
//               height: height,
//               child: Card(
//                 // Ensures that the Card's children are clipped correctly.
//                 clipBehavior: Clip.antiAlias,
//                 shape: shape,
//                 child: Semantics(
//                   label: destination.title,
//                   child: TravelDestinationContent(destination: destination),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TappableTravelDestinationItem extends StatelessWidget {
//   const TappableTravelDestinationItem({
//     super.key,
//     required this.destination,
//     this.shape,
//   });

//   // Height that allows for all the Card's contents
//   // to fit comfortably within the card.
//   static const double height = 298;
//   final TravelDestination destination;
//   final ShapeBorder? shape;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           children: [
//             const SectionTitle(title: 'Tappable'),
//             SizedBox(
//               height: height,
//               child: Card(
//                 // Ensures that the Card's children (including the ink splash)
//                 // are clipped correctly.
//                 clipBehavior: Clip.antiAlias,
//                 shape: shape,
//                 child: InkWell(
//                   onTap: () {},
//                   splashColor:
//                       Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
//                   highlightColor: Colors.transparent,
//                   child: Semantics(
//                     label: destination.title,
//                     child: TravelDestinationContent(destination: destination),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SelectableTravelDestinationItem extends StatelessWidget {
//   const SelectableTravelDestinationItem({
//     super.key,
//     required this.destination,
//     required this.isSelected,
//     required this.onSelected,
//     this.shape,
//   });

//   final TravelDestination destination;
//   final ShapeBorder? shape;
//   final bool isSelected;
//   final VoidCallback onSelected;

//   // Height that allows for all the Card's contents
//   // to fit comfortably within the card.
//   static const double height = 298;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     final String selectedStatus = isSelected ? 'Selected' : 'Not selected';

//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           children: [
//             const SectionTitle(title: 'Selectable (long press)'),
//             SizedBox(
//               height: height,
//               child: Card(
//                 // Ensures that the Card's children (including the ink splash)
//                 // are clipped correctly.
//                 clipBehavior: Clip.antiAlias,
//                 shape: shape,
//                 child: InkWell(
//                   onLongPress: () {
//                     onSelected();
//                   },
//                   splashColor: colorScheme.onSurface.withOpacity(0.12),
//                   highlightColor: Colors.transparent,
//                   child: Stack(
//                     children: [
//                       Container(
//                         color: isSelected
//                             ? colorScheme.primary.withOpacity(0.08)
//                             : Colors.transparent,
//                       ),
//                       Semantics(
//                         label: '${destination.title}, $selectedStatus',
//                         onLongPressHint: isSelected ? 'Deselect' : 'Select',
//                         child:
//                             TravelDestinationContent(destination: destination),
//                       ),
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Padding(
//                           padding: const EdgeInsets.all(8),
//                           child: Icon(
//                             Icons.check_circle,
//                             color: isSelected
//                                 ? colorScheme.primary
//                                 : Colors.transparent,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SectionTitle extends StatelessWidget {
//   const SectionTitle({
//     super.key,
//     required this.title,
//   });

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Text(title, style: Theme.of(context).textTheme.titleMedium),
//       ),
//     );
//   }
// }

// class TravelDestinationContent extends StatelessWidget {
//   const TravelDestinationContent({super.key, required this.destination});

//   final TravelDestination destination;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final titleStyle = theme.textTheme.headlineSmall!.copyWith(
//       color: Colors.white,
//     );
//     final descriptionStyle = theme.textTheme.titleMedium!;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: 184,
//           child: Stack(
//             children: [
//               Positioned.fill(
//                 // In order to have the ink splash appear above the image, you
//                 // must use Ink.image. This allows the image to be painted as
//                 // part of the Material and display ink effects above it.
//                 // Using a standard Image will obscure the ink splash.
//                 child: Ink.image(
//                   image: AssetImage(
//                     destination.assetName,
//                   ),
//                   fit: BoxFit.cover,
//                   child: Container(),
//                 ),
//               ),
//               Positioned(
//                 bottom: 16,
//                 left: 16,
//                 right: 16,
//                 child: FittedBox(
//                   fit: BoxFit.scaleDown,
//                   alignment: Alignment.centerLeft,
//                   child: Semantics(
//                     container: true,
//                     header: true,
//                     child: Text(
//                       destination.title,
//                       style: titleStyle,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         // Description and share/explore buttons.
//         Semantics(
//           container: true,
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//             child: DefaultTextStyle(
//               softWrap: false,
//               overflow: TextOverflow.ellipsis,
//               style: descriptionStyle,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // The three line description on each card demo.
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 8),
//                     child: Text(
//                       destination.description,
//                       style: descriptionStyle.copyWith(color: Colors.black54),
//                     ),
//                   ),
//                   Text(destination.city),
//                   Text(destination.location),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         if (destination.cardType == CardType.standard)
//           // share, explore buttons
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: OverflowBar(
//               alignment: MainAxisAlignment.start,
//               spacing: 8,
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Share',
//                     semanticsLabel: 'Share ${destination.title}',
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Explore',
//                     semanticsLabel: 'Explore ${destination.title}',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );
//   }
// }

// class CardsDemo extends StatefulWidget {
//   const CardsDemo({super.key});

//   @override
//   State<CardsDemo> createState() => _CardsDemoState();
// }

// class _CardsDemoState extends State<CardsDemo> with RestorationMixin {
//   final RestorableBool _isSelected = RestorableBool(false);

//   @override
//   String get restorationId => 'cards_demo';

//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(_isSelected, 'is_selected');
//   }

//   @override
//   void dispose() {
//     _isSelected.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: const Text('Cards'),
//         ),
//         body: Scrollbar(
//           child: ListView(
//             restorationId: 'cards_demo_list_view',
//             padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
//             children: [
//               for (final destination in _destinations)
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 8),
//                   child: switch (destination.cardType) {
//                     CardType.standard =>
//                       TravelDestinationItem(destination: destination),
//                     CardType.tappable =>
//                       TappableTravelDestinationItem(destination: destination),
//                     CardType.selectable => SelectableTravelDestinationItem(
//                         destination: destination,
//                         isSelected: _isSelected.value,
//                         onSelected: () {
//                           setState(() {
//                             _isSelected.value = !_isSelected.value;
//                           });
//                         },
//                       ),
//                   },
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const CardsDemo());
// }












//membuat colour
// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// import 'package:flutter/material.dart';

// const double _colorItemHeight = 48;

// class _Palette {
//   const _Palette({
//     required this.name,
//     required this.primary,
//     this.accent,
//     this.threshold = 900,
//   });

//   final String name;
//   final MaterialColor primary;
//   final MaterialAccentColor? accent;

//   // Titles for indices > threshold are white, otherwise black.
//   final int threshold;
// }

// const List<_Palette> _allPalettes = [
//   _Palette(
//     name: 'Red',
//     primary: Colors.red,
//     accent: Colors.redAccent,
//     threshold: 300,
//   ),
//   _Palette(
//     name: 'Pink',
//     primary: Colors.pink,
//     accent: Colors.pinkAccent,
//     threshold: 200,
//   ),
//   _Palette(
//     name: 'Purple',
//     primary: Colors.purple,
//     accent: Colors.purpleAccent,
//     threshold: 200,
//   ),
//   _Palette(
//     name: 'Deep purple',
//     primary: Colors.deepPurple,
//     accent: Colors.deepPurpleAccent,
//     threshold: 200,
//   ),
//   _Palette(
//     name: 'Indigo',
//     primary: Colors.indigo,
//     accent: Colors.indigoAccent,
//     threshold: 200,
//   ),
//   _Palette(
//     name: 'Blue',
//     primary: Colors.blue,
//     accent: Colors.blueAccent,
//     threshold: 400,
//   ),
//   _Palette(
//     name: 'Light blue',
//     primary: Colors.lightBlue,
//     accent: Colors.lightBlueAccent,
//     threshold: 500,
//   ),
//   _Palette(
//     name: 'Cyan',
//     primary: Colors.cyan,
//     accent: Colors.cyanAccent,
//     threshold: 600,
//   ),
//   _Palette(
//     name: 'Teal',
//     primary: Colors.teal,
//     accent: Colors.tealAccent,
//     threshold: 400,
//   ),
//   _Palette(
//     name: 'Green',
//     primary: Colors.green,
//     accent: Colors.greenAccent,
//     threshold: 500,
//   ),
//   _Palette(
//     name: 'Light green',
//     primary: Colors.lightGreen,
//     accent: Colors.lightGreenAccent,
//     threshold: 600,
//   ),
//   _Palette(
//     name: 'Lime',
//     primary: Colors.lime,
//     accent: Colors.limeAccent,
//     threshold: 800,
//   ),
//   _Palette(
//     name: 'Yellow',
//     primary: Colors.yellow,
//     accent: Colors.yellowAccent,
//   ),
//   _Palette(
//     name: 'Amber',
//     primary: Colors.amber,
//     accent: Colors.amberAccent,
//   ),
//   _Palette(
//     name: 'Orange',
//     primary: Colors.orange,
//     accent: Colors.orangeAccent,
//     threshold: 700,
//   ),
//   _Palette(
//     name: 'Deep orange',
//     primary: Colors.deepOrange,
//     accent: Colors.deepOrangeAccent,
//     threshold: 400,
//   ),
//   _Palette(
//     name: 'Brown',
//     primary: Colors.brown,
//     threshold: 200,
//   ),
//   _Palette(
//     name: 'Grey',
//     primary: Colors.grey,
//     threshold: 500,
//   ),
//   _Palette(
//     name: 'Blue grey',
//     primary: Colors.blueGrey,
//     threshold: 500,
//   ),
// ];

// class _ColorItem extends StatelessWidget {
//   const _ColorItem({
//     required this.index,
//     required this.color,
//     this.prefix = '',
//   });

//   final int index;
//   final Color color;
//   final String prefix;

//   String get _colorString =>
//       "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

//   @override
//   Widget build(BuildContext context) {
//     return Semantics(
//       container: true,
//       child: Container(
//         height: _colorItemHeight,
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         color: color,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text('$prefix$index'),
//             Flexible(child: Text(_colorString)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _PaletteTabView extends StatelessWidget {
//   const _PaletteTabView({required this.colors});

//   final _Palette colors;
//   static const primaryKeys = <int>[
//     50,
//     100,
//     200,
//     300,
//     400,
//     500,
//     600,
//     700,
//     800,
//     900
//   ];
//   static const accentKeys = <int>[100, 200, 400, 700];

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final whiteTextStyle = textTheme.bodyMedium!.copyWith(
//       color: Colors.white,
//     );
//     final blackTextStyle = textTheme.bodyMedium!.copyWith(
//       color: Colors.black,
//     );
//     return Scrollbar(
//       child: ListView(
//         itemExtent: _colorItemHeight,
//         children: [
//           for (final key in primaryKeys)
//             DefaultTextStyle(
//               style: key > colors.threshold ? whiteTextStyle : blackTextStyle,
//               child: _ColorItem(index: key, color: colors.primary[key]!),
//             ),
//           if (colors.accent != null)
//             for (final key in accentKeys)
//               DefaultTextStyle(
//                 style: key > colors.threshold ? whiteTextStyle : blackTextStyle,
//                 child: _ColorItem(
//                   index: key,
//                   color: colors.accent![key]!,
//                   prefix: 'A',
//                 ),
//               ),
//         ],
//       ),
//     );
//   }
// }

// class ColorsDemo extends StatelessWidget {
//   const ColorsDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const palettes = _allPalettes;
//     return MaterialApp(
//       home: DefaultTabController(
//         length: palettes.length,
//         child: Scaffold(
//           appBar: AppBar(
//             automaticallyImplyLeading: false,
//             title: const Text('Colors'),
//             bottom: TabBar(
//               isScrollable: true,
//               tabs: [
//                 for (final palette in palettes) Tab(text: palette.name),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               for (final palette in palettes) _PaletteTabView(colors: palette),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const ColorsDemo());
// }







// membuat container
// import 'package:flutter/material.dart';

// class GridListDemo extends StatelessWidget {
//   const GridListDemo({super.key, required this.type});

//   final GridListDemoType type;

//   static const List<_Photo> _photos = [
//     _Photo(
//       assetName: 'assets/images/foto1.jpg',
//       title: 'Chennai',
//       subtitle: 'Flower Market',
//     ),
//     _Photo(
//       assetName: 'assets/images/foto2.jpg',
//       title: 'Tanjore',
//       subtitle: 'Bronze Works',
//     ),
//     _Photo(
//       assetName: 'assets/images/foto3.jpg',
//       title: 'Tanjore',
//       subtitle: 'Market',
//     ),
//     _Photo(
//       assetName: 'assets/images/foto1.jpg',
//       title: 'Tanjore',
//       subtitle: 'Thanjavur Temple',
//     ),
//     _Photo(
//       assetName: 'places/india_tanjore_thanjavur_temple_carvings.png',
//       title: 'Tanjore',
//       subtitle: 'Thanjavur Temple',
//     ),
//     _Photo(
//       assetName: 'places/india_pondicherry_salt_farm.png',
//       title: 'Pondicherry',
//       subtitle: 'Salt Farm',
//     ),
//     _Photo(
//       assetName: 'places/india_chennai_highway.png',
//       title: 'Chennai',
//       subtitle: 'Scooters',
//     ),
//     _Photo(
//       assetName: 'places/india_chettinad_silk_maker.png',
//       title: 'Chettinad',
//       subtitle: 'Silk Maker',
//     ),
//     _Photo(
//       assetName: 'places/india_chettinad_produce.png',
//       title: 'Chettinad',
//       subtitle: 'Lunch Prep',
//     ),
//     _Photo(
//       assetName: 'places/india_tanjore_market_technology.png',
//       title: 'Tanjore',
//       subtitle: 'Market',
//     ),
//     _Photo(
//       assetName: 'places/india_pondicherry_beach.png',
//       title: 'Pondicherry',
//       subtitle: 'Beach',
//     ),
//     _Photo(
//       assetName: 'places/india_pondicherry_fisherman.png',
//       title: 'Pondicherry',
//       subtitle: 'Fisherman',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           title: const Text('Grid view'),
//         ),
//         body: GridView.count(
//           restorationId: 'grid_view_demo_grid_offset',
//           crossAxisCount: 2,
//           mainAxisSpacing: 8,
//           crossAxisSpacing: 8,
//           padding: const EdgeInsets.all(8),
//           childAspectRatio: 1,
//           children: _photos.map<Widget>((photo) {
//             return _GridDemoPhotoItem(
//               photo: photo,
//               tileStyle: type,
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

// class _Photo {
//   const _Photo({
//     required this.assetName,
//     required this.title,
//     required this.subtitle,
//   });

//   final String assetName;
//   final String title;
//   final String subtitle;
// }

// /// Allow the text size to shrink to fit in the space.
// class _GridTitleText extends StatelessWidget {
//   const _GridTitleText(this.text);

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return FittedBox(
//       fit: BoxFit.scaleDown,
//       alignment: AlignmentDirectional.centerStart,
//       child: Text(text),
//     );
//   }
// }

// class _GridDemoPhotoItem extends StatelessWidget {
//   const _GridDemoPhotoItem({
//     required this.photo,
//     required this.tileStyle,
//   });

//   final _Photo photo;
//   final GridListDemoType tileStyle;

//   @override
//   Widget build(BuildContext context) {
//     final Widget image = Semantics(
//       label: '${photo.title} ${photo.subtitle}',
//       child: Material(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//         clipBehavior: Clip.antiAlias,
//         child: Image.asset(
//           photo.assetName,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );

//     return switch (tileStyle) {
//       GridListDemoType.imageOnly => image,
//       GridListDemoType.header => GridTile(
//           header: Material(
//             color: Colors.transparent,
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
//             ),
//             clipBehavior: Clip.antiAlias,
//             child: GridTileBar(
//               title: _GridTitleText(photo.title),
//               backgroundColor: Colors.black45,
//             ),
//           ),
//           child: image,
//         ),
//       GridListDemoType.footer => GridTile(
//           footer: Material(
//             color: Colors.transparent,
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
//             ),
//             clipBehavior: Clip.antiAlias,
//             child: GridTileBar(
//               backgroundColor: Colors.black45,
//               title: _GridTitleText(photo.title),
//               subtitle: _GridTitleText(photo.subtitle),
//             ),
//           ),
//           child: image,
//         )
//     };
//   }
// }

// enum GridListDemoType {
//   imageOnly,
//   header,
//   footer,
// }

// void main() {
//   runApp(const GridListDemo(type: GridListDemoType.footer));
// }




// membuat Nesting rows and coloumns (banyuwangi island)
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

// void main() {
//   debugPaintSizeEnabled = false; // Set to true for visual layout.
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: buildHomePage('Strawberry Pavlova Recipe'),
//     );
//   }

//   Widget buildHomePage(String title) {
//     const titleText = Padding(
//       padding: EdgeInsets.all(20),
//       child: Text(
//         'Banyuwangi Islands',
//         style: TextStyle(
//           fontWeight: FontWeight.w800,
//           letterSpacing: 0.5,
//           fontSize: 30,
//         ),
//       ),
//     );

//     const subTitle = Text(
//       'Pavlova is a meringue-based dessert named after the Russian ballerina '
//       'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
//       'topped with fruit and whipped cream.',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontFamily: 'Georgia',
//         fontSize: 25,
//       ),
//     );

//     // #docregion ratings, stars
//     final stars = Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         const Icon(Icons.star, color: Colors.black),
//         const Icon(Icons.star, color: Colors.black),
//       ],
//     );
//     // #enddocregion stars

//     final ratings = Container(
//       padding: const EdgeInsets.all(20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           stars,
//           const Text(
//             '170 Reviews',
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Roboto',
//               letterSpacing: 0.5,
//               fontSize: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//     // #enddocregion ratings

//     // #docregion icon-list
//     const descTextStyle = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.w800,
//       fontFamily: 'Roboto',
//       letterSpacing: 0.5,
//       fontSize: 18,
//       height: 2,
//     );

//     // DefaultTextStyle.merge() allows you to create a default text
//     // style that is inherited by its child and all subsequent children.
//     final iconList = DefaultTextStyle.merge(
//       style: descTextStyle,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Icon(Icons.kitchen, color: Colors.green[500]),
//                 const Text('PREP:'),
//                 const Text('25 min'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.timer, color: Colors.green[500]),
//                 const Text('COOK:'),
//                 const Text('1 hr'),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(Icons.restaurant, color: Colors.green[500]),
//                 const Text('FEEDS:'),
//                 const Text('4-6'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//     // #enddocregion icon-list

//     // #docregion left-column
//     final leftColumn = Container(
//       padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
//       child: Column(
//         children: [
//           titleText,
//           subTitle,
//           ratings,
//           iconList,
//         ],
//       ),
//     );
//     // #enddocregion left-column

//     final mainImage = Image.asset(
//       'images/foto2.jpg',
//       fit: BoxFit.cover,
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       // #docregion body
//       body: Center(
//         child: Container(
//           margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
//           height: 600,
//           child: Card(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 440,
//                   child: leftColumn,
//                 ),
//                 mainImage,
//               ],
//             ),
//           ),
//         ),
//       ),
//       // #enddocregion body
//     );
//   }
// }



// packing widget
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Icon Row Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Icon Row Example'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(Icons.star, color: Colors.green[500]), // Bintang hijau
//               Icon(Icons.star, color: Colors.green[500]), // Bintang hijau
//               Icon(Icons.star, color: Colors.green[500]), // Bintang hijau
//               const Icon(Icons.star, color: Colors.black), // Bintang hitam
//               const Icon(Icons.star, color: Colors.black), // Bintang hitam
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }







// sizing widget
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Row Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Image Row Example'),
//         ),
//         body: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Image.asset('images/foto1.jpg'), // Gambar pertama
//             ),
//             Expanded(
//               flex: 2,
//               child: Image.asset('images/foto2.jpg'), // Gambar kedua (lebih besar)
//             ),
//             Expanded(
//               child: Image.asset('images/foto3.jpg'), // Gambar ketiga
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// Vertikal
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Column Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Image Column Example'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Image.asset('images/foto1.jpg'), // Gambar pertama
//             Image.asset('images/foto2.jpg'), // Gambar kedua
//             Image.asset('images/foto3.jpg'), // Gambar ketiga
//           ],
//         ),
//       ),
//     );
//   }
// }







// Horizontal
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Row Example',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Image Row Example'),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Image.asset('images/foto1.jpg'),
//             Image.asset('images/foto2.jpg'),
//             Image.asset('images/foto3.jpg'),
//           ],
//         ),
//       ),
//     );
//   }
// }























//NON MATERIAL APPS
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello World App'),
//         ),
//         body: Container(
//           decoration: const BoxDecoration(color: Colors.white),
//           child: const Center(
//             child: Text(
//               'Hello World',
//               textDirection: TextDirection.ltr,
//               style: TextStyle(
//                 fontSize: 32,
//                 color: Colors.black87,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




























// PRAK CUPPERTINO
// import 'package:flutter/cupertino.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       title: 'Flutter layout demo',
//       theme: CupertinoThemeData(
//         brightness: Brightness.light,
//         primaryColor: CupertinoColors.systemBlue,
//       ),
//       home: CupertinoPageScaffold(
//         navigationBar: CupertinoNavigationBar(
//           backgroundColor: CupertinoColors.systemGrey,
//           middle: Text('Flutter layout demo'),
//         ),
//         // properti body digunakan untuk menampilkan konten halaman
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text('Hello World'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(const MyApp());








// PRAK 1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Hilangkan const dari variabel lokal
//     String appTitle = 'Flutter layout demo';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }
