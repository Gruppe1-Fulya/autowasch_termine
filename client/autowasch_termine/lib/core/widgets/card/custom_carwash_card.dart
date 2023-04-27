import 'package:autowasch_termine/product/models/autowash_model.dart';
import 'package:flutter/material.dart';

class CustomCarWashCard extends StatelessWidget {
  const CustomCarWashCard({
    super.key,
    required Autowash autowash,
  }) : _autowash = autowash;

  final Autowash _autowash;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 50,
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  _autowash.getPhoto(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _autowash.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _autowash.address,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  _autowash.availableTimes,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  _autowash.phone,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "${_autowash.price}₺",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(.7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
