
import 'package:flutter/material.dart';
import 'book.dart';
import 'book_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGrid = false;
  String searchText = '';
  int discount = 20;

  @override
  Widget build(BuildContext context) {
    List<Book> filteredBooks = books.where((book) {
      return book.title.toLowerCase().contains(
        searchText.toLowerCase(),
      ) ||
          book.genre.toLowerCase().contains(
            searchText.toLowerCase(),
          );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: const Text(
          'Book Library',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.white,
        ),

        actions: [
          IconButton(
            icon: Icon(
              isGrid ? Icons.view_list : Icons.grid_view,
            ),
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search books...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          Expanded(
            child: filteredBooks.isEmpty
                ? const Center(
              child: Text(
                'No books found',
                style: TextStyle(fontSize: 18),
              ),
            )
                : isGrid
                ? GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: filteredBooks.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.58,
              ),
              itemBuilder: (context, index) {
                return BookCard(
                  book: filteredBooks[index],
                  discount: discount,
                  onDiscountTap: () {
                    setState(() {
                      discount--;
                    });
                  },
                );
              },
            )
              : Center(
              child: SizedBox(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  itemCount: filteredBooks.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        width: 520,
                        height: 650,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: BookCard(
                          book: filteredBooks[index],
                          discount: discount,
                          onDiscountTap: () {
                            setState(() {
                              discount--;
                            });
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
