
class Book {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Book({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

List<Book> books = [
  const Book(
    title: 'صحيح البخاري',
    genre: 'حديث شريف',
    year: 846,
    rating: 9.8,
    image: 'assets/covers/bukhari.png',
  ),
  const Book(
    title: 'رياض الصالحين',
    genre: 'حديث شريف',
    year: 1270,
    rating: 9.5,
    image: 'assets/covers/riyadh.png',
  ),
  const Book(
    title: 'الرحيق المختوم',
    genre: 'السيرة النبوية',
    year: 1976,
    rating: 9.4,
    image: 'assets/covers/rah_ik.png',
  ),
  const Book(
    title: 'زاد المعاد',
    genre: 'دراسات اسلامية',
    year: 1330,
    rating: 9.6,
    image: 'assets/covers/zad.png',
  ),
  const Book(
    title: 'فقه السنة',
    genre: 'الفقه الإسلامي',
    year: 1945,
    rating: 9.2,
    image: 'assets/covers/fiqh.png',
  ),
  const Book(
    title: 'الأربعون النووية',
    genre: 'حديث شريف',
    year: 1250,
    rating: 9.5,
    image: 'assets/covers/40_hadith.png',
  ),
  const Book(
    title: 'تفسير ابن كثير',
    genre: 'تفسير كتاب الله لابن كثير',
    year: 1373,
    rating: 9.7,
    image: 'assets/covers/ibn_kathi_r.png',
  ),
  const Book(
    title: 'الداء والدواء',
    genre: 'أعمال القلوب و تزكية النفوس',
    year: 1320,
    rating: 9.3,
    image: 'assets/covers/al_daa_wa_al_dawa.png',
  ),
];
