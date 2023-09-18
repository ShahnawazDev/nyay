import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nyay/components/my_search_bar.dart';
import 'package:nyay/model/lawyer.dart';

class LawyerListPage extends StatelessWidget {
  final List<Lawyer> lawyers = [
    Lawyer(
      name: 'Advocate Shankar Mishra',
      imageUrl: 'assets/images/lawyers_profile/shankar_mishra.jpeg',
      pricing: 200.0,
      phoneNumber: '123-456-7890',
      address: '123 Main St, Ghaziabad',
      description: 'Experienced lawyer with 10+ years of practice.',
      rating: 4.5,
      isFavorite: true,
    ),
    Lawyer(
      name: 'Advocate Ritu Sharma',
      imageUrl: 'assets/images/lawyers_profile/ritu_sharma.jpeg',
      pricing: 200.0,
      phoneNumber: '123-456-7890',
      address: '123 Main St, Ghaziabad',
      description: 'Experienced lawyer with 10+ years of practice.',
      rating: 4.5,
      isFavorite: false,
    ),
    Lawyer(
      name: 'Advocate Umesh Gupta',
      imageUrl: 'assets/images/lawyers_profile/umesh_gupta.jpeg',
      pricing: 200.0,
      phoneNumber: '123-456-7890',
      address: '123 Main St, Ghaziabad',
      description: 'Experienced lawyer with 10+ years of practice.',
      rating: 4.5,
      isFavorite: false,
    ),
    Lawyer(
      name: 'Advocate Unnati Pathak',
      imageUrl: 'assets/images/lawyers_profile/unnati_pathak.png',
      pricing: 200.0,
      phoneNumber: '123-456-7890',
      address: '123 Main St, Ghaziabad',
      description: 'Experienced lawyer with 10+ years of practice.',
      rating: 4.5,
      isFavorite: true,
    ),
    // Add more lawyer data here...
  ];

  LawyerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lawyer List'),
        elevation: 0,
        // backgroundColor: Colors.blue,
        bottom: PreferredSize(child: MySearchBar(), preferredSize: Size.fromHeight(60.0.h)),
      ),
      body: ListView.builder(
        itemCount: lawyers.length,
        itemBuilder: (context, index) {
          final lawyer = lawyers[index];
          return LawyerTile(lawyer: lawyer);
        },
      ),
    );
  }
}

class LawyerTile extends StatelessWidget {
final Lawyer lawyer;

const LawyerTile({super.key, required this.lawyer});

@override
Widget build(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.w),


    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromRGBO(210, 235, 231, 0.3)
    ),
    child: ListTile(

      contentPadding: EdgeInsets.all(10),
      leading: Container(
        // width: 100.w,
        child: Image.asset(
          lawyer.imageUrl,
          width: 60.w,
          // height: 10.w,
          fit: BoxFit.fill,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(lawyer.name),
          lawyer.isFavorite ? const FaIcon(FontAwesomeIcons.solidHeart): const FaIcon(FontAwesomeIcons.heart),
          // Text('Favorite: ${lawyer.isFavorite ? 'Yes' : 'No'}'),
        ],
      ),

      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(lawyer.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(

                onPressed: () {
                  // Handle booking action
                },
                child: Text('Book'),
              ),

              Text('⭐ ${lawyer.rating}',
              style: TextStyle(fontSize: 15.w,),),
            ],
          ),
        ],
      ),
    ),
  );
}
}

