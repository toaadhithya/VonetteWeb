import 'package:vonette_web/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String headerName;
  const Header({
    Key? key,
    required this.headerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headerName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Spacer(flex: 1),
        //Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: fgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            '../assets/images/profile_pic.png',
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text('Rushil Arumugam'),
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              //color: iconColor,
            ),
            iconSize: 20,
            offset: Offset(0, 35),
            shape: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
            tooltip: 'Actions',
            itemBuilder: (context) {
              List<String> actions = ['Profile', 'Settings', 'Log Out'];
              return actions.map((String choice) {
                return PopupMenuItem<String>(
                  child: Text(choice),
                  value: choice,
                  onTap: () {},
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}

// class SearchField extends StatelessWidget {
//   const SearchField({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         fillColor: secondaryColor,
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: const BorderRadius.all(
//             Radius.circular(10),
//           ),
//         ),
//         suffixIcon: InkWell(
//           onTap: () {},
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           child: Padding(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: Icon(Icons.search),
//           ),
//         ),
//         hintText: 'Search',
//       ),
//     );
//   }
// }
