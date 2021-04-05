import 'package:flutter/material.dart';
import 'package:tambo/generated/l10n.dart';

class Place {
  static getPlaces(BuildContext context) {
    return [
      {
        "name": S.of(context).nameKirk,
        "img": "assets/1.jpeg",
        "price": S.of(context).priceKirk,
        "location": S.of(context).locationKirk,
        "details": S.of(context).detailsKirk,
        "imgs": [
          {
            "img": "assets/1.jpeg",
          },
          {
            "img": "assets/2.jpeg",
          },
          {
            "img": "assets/3.jpeg",
          }
        ],
        "url": S.of(context).urlKirk
      },
      {
        "name": "Beach Mauris Blandit",
        "img": "assets/2.jpeg",
        "price": r"$100/night",
        "location": "Lisbon, Portugal",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
      {
        "name": "Ipsum Restaurant",
        "img": "assets/3.jpeg",
        "price": r"$100/night",
        "location": "Paris, France",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\n\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
      {
        "name": "Curabitur Beach",
        "img": "assets/4.jpeg",
        "price": r"$100/night",
        "location": "Rome, Italy",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
      {
        "name": "Tincidunt Pool",
        "img": "assets/5.jpeg",
        "price": r"$100/night",
        "location": "Madrid, Spain",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
      {
        "name": "Tincidunt Pool",
        "img": "assets/6.jpeg",
        "price": r"$100/night",
        "location": "Madrid, Spain",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
      {
        "name": "Tincidunt Pool",
        "img": "assets/7.jpeg",
        "price": r"$100/night",
        "location": "Madrid, Spain",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
      {
        "name": "Tincidunt Pool",
        "img": "assets/8.jpeg",
        "price": r"$100/night",
        "location": "Madrid, Spain",
        "details": "Pellentesque in ipsum id orci porta dapibus. "
            "Nulla porttitor accumsan tincidunt. Donec rutrum "
            "congue leo eget malesuada. "
            "\nPraesent sapien massa, convallis a pellentesque "
            "nec, egestas non nisi. Donec rutrum congue leo eget malesuada. "
            "Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. "
            "Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. "
            "\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. "
            "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.",
      },
    ];
  }
}
