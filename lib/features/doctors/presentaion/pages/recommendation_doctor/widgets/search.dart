// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/eums.dart';
import 'package:maser_project/core/helpers/functions.dart';
import 'package:maser_project/core/theme/text_styles.dart';
import 'package:maser_project/features/doctors/presentaion/bloc/doctors_bloc.dart';

class SearchRow extends StatelessWidget {
  SearchRow({super.key});

  // Variables
  final DoctorsSearchBy searchBy = DoctorsSearchBy(searchBy: SearchBy.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SearchBox(
          searchBy: searchBy,
        ),
        SearchMenu(
          searchBy: searchBy,
        ),
      ],
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key, required this.searchBy});

  final DoctorsSearchBy searchBy;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        onSubmitted: (value) {
          context.read<DoctorsBloc>().add(
              SearchDoctorsEvent(searchBy: searchBy.searchBy, value: value));
        },
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: CColors.lightGrey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: CColors.grey.withBlue(100))),
            hintText: 'Search',
            hintStyle: TextStyles.font10GreyWeightRegular),
      ),
    );
  }
}

class SearchMenu extends StatelessWidget {
  const SearchMenu({super.key, required this.searchBy});

  final DoctorsSearchBy searchBy;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      menuPadding: EdgeInsets.zero,
      icon: const Icon(Icons.menu),
      initialValue: SearchBy.name,
      itemBuilder: (context) {
        // Value Viewed by PopupMenu
        const List<SearchBy> values = SearchBy.values;

        return [
          for (var v in values)
            PopupMenuItem(
                onTap: () {
                  searchBy.searchBy = v;
                },
                child: Text(
                  HelperFunctions.capitalize(v.name.toString()),
                  style: TextStyles.font12DarkBlueWeightRegular,
                ))
        ];
      },
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.menu);
  }
}

class DoctorsSearchBy {
  SearchBy searchBy;

  DoctorsSearchBy({
    required this.searchBy,
  });
}
