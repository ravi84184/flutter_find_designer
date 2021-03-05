import 'package:flutter_find_designer/utility/app_assets.dart';

class UserModel {
  final String name;
  final String profileImage;
  final String designation;
  final String experience;
  final String description;
  final List<String> projectList;

  UserModel(
      {this.name,
      this.designation,
      this.profileImage,
      this.experience,
      this.description,
      this.projectList});
}

List<UserModel> recentUserList = [
  UserModel(
      name: "Peter Parker",
      profileImage: AppAssets.person3,
      designation: "Sr. UI UX Designer",
      experience: "3.5 years",
      description:
          "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have ",
      projectList: [
        "https://assets.materialup.com/uploads/9692f804-45f2-4ea9-a072-1628e31772b1/teaser.png",
        "https://assets.materialup.com/uploads/0e856001-f261-472d-9c6e-470132fff443/teaser.png",
        "https://assets.materialup.com/uploads/750ee922-a9fc-4d32-ab66-33b52fc24529/teaser.png",
        "https://assets.materialup.com/uploads/2807278f-7d89-4953-9505-bf43e2803d31/teaser.png",
      ]),
  UserModel(
      name: "Ana Johnson",
      profileImage: AppAssets.person1,
      designation: "Sr. UI Designer",
      experience: "2.7 years",
      description:
          "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have ",
      projectList: [
        "https://assets.materialup.com/uploads/4911d91f-c46c-4759-8c95-5bcd7104c97c/teaser.png",
        "https://assets.materialup.com/uploads/278c6e13-3378-419b-b1cb-4dcfe4b5cc2b/teaser.png",
        "https://assets.materialup.com/uploads/c0a73c67-58a8-465e-b2a5-e21a13f1a688/teaser.png",
        "https://assets.materialup.com/uploads/83c314aa-6f2e-4956-8492-28d03348e8ad/teaser.png",
      ]),
];

List<UserModel> userList = [
  UserModel(
      name: "Erik Shannon",
      profileImage: AppAssets.person2,
      designation: "Sr. UI UX Designer",
      experience: "5.3 years",
      description:
          "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have ",
      projectList: [
        "https://assets.materialup.com/uploads/4dd9e3c0-ea00-4e99-aa85-550e5621d541/teaser.png",
        "https://assets.materialup.com/uploads/d1d1044d-807c-4b60-9979-6788d1982191/teaser.png",
        "https://assets.materialup.com/uploads/e8f914ec-e67a-45a2-9850-6c55219877cb/teaser.png",
        "https://assets.materialup.com/uploads/fb955116-c6eb-4f35-a57f-b37a7086640e/teaser.png",
      ]),
  UserModel(
      name: "Tony Stark",
      profileImage: AppAssets.person4,
      designation: "Sr. UI Designer",
      experience: "3.1 years",
      description:
          "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have ",
      projectList: [
        "https://assets.materialup.com/uploads/86a7a938-a2cc-4154-86a6-f8634d69c263/teaser.png",
        "https://assets.materialup.com/uploads/d03e8681-992c-4661-a812-eddda75be1ed/teaser.png",
        "https://assets.materialup.com/uploads/022dc8cb-f29a-4599-bea6-fad41a7d38e2/teaser.png",
        "https://assets.materialup.com/uploads/a0cadea1-163d-4669-9884-f5d752f1c9b9/teaser.png",
      ]),
];
