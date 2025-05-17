class Doctor {
  final String name;
  final String specialist;
  final String rating;
  final String totalReview;
  final String fees;
  final String image;

  Doctor({
    required this.name,
    required this.specialist,
    required this.rating,
    required this.totalReview,
    required this.fees,
    required this.image,
  });
}

final List<Doctor> doctorList = [
  Doctor(
    name: 'Simons Lauren',
    specialist: 'Spinal Surgery',
    rating: '4.7',
    totalReview: '2123',
    fees: '\$49.99',
    image: 'lib/assets/doctor1.jpg',
  ),
  Doctor(
    name: 'Anya Petrova',
    specialist: 'Cardiology',
    rating: '4.9',
    totalReview: '1876',
    fees: '\$55.50',
    image: 'lib/assets/doctor2.jpg',
  ),
  Doctor(
    name: 'Kenji Tanaka',
    specialist: 'Pediatrics',
    rating: '4.6',
    totalReview: '2450',
    fees: '\$45.00',
    image: 'lib/assets/doctor3.png',
  ),
  Doctor(
    name: 'Isabelle Dubois',
    specialist: 'Dermatology',
    rating: '4.8',
    totalReview: '1987',
    fees: '\$60.25',
    image: 'lib/assets/doctor4.png',
  ),
  Doctor(
    name: 'Omar Hassan',
    specialist: 'Neurology',
    rating: '4.5',
    totalReview: '1654',
    fees: '\$52.75',
    image: 'lib/assets/doctor5.jpg',
  ),
  Doctor(
    name: 'Sofia Rossi',
    specialist: 'Ophthalmology',
    rating: '4.9',
    totalReview: '2201',
    fees: '\$58.00',
    image: 'lib/assets/doctor6.png',
  ),
  Doctor(
    name: 'Ben Carter',
    specialist: 'Orthopedics',
    rating: '4.7',
    totalReview: '2035',
    fees: '\$51.20',
    image: 'lib/assets/doctor7.jpg',
  ),
  Doctor(
    name: 'Mei Lin',
    specialist: 'General Practice',
    rating: '4.6',
    totalReview: '2568',
    fees: '\$40.50',
    image: 'lib/assets/doctor8.jpg',
  ),
  Doctor(
    name: 'Raj Patel',
    specialist: 'Gastroenterology',
    rating: '4.8',
    totalReview: '1789',
    fees: '\$53.90',
    image: 'lib/assets/doctor9.jpg',
  ),
  Doctor(
    name: 'Lena Müller',
    specialist: 'Psychiatry',
    rating: '4.7',
    totalReview: '1912',
    fees: '\$56.75',
    image: 'lib/assets/doctor10.jpg',
  ),
];
