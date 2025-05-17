class Spesialistmodel {
  final String image;
  final String label;

  Spesialistmodel({required this.image, required this.label});
}

final List<Spesialistmodel> listOfSpesialist = [
  Spesialistmodel(image: 'lib/assets/icons/brain.png', label: 'Neurology'),
  Spesialistmodel(image: 'lib/assets/icons/kidney.png', label: 'Nephrology'),
  Spesialistmodel(image: 'lib/assets/icons/cancer-cell.png', label: 'Oncology'),
  Spesialistmodel(image: 'lib/assets/icons/elder.png', label: 'Geriatrics'),
  Spesialistmodel(image: 'lib/assets/icons/heart.png', label: 'Cardiology'),
  Spesialistmodel(image: 'lib/assets/icons/eye.png', label: 'Ophthalmology'),
  Spesialistmodel(image: 'lib/assets/icons/lungs.png', label: 'Radiology'),
  Spesialistmodel(image: 'lib/assets/icons/skin.png', label: 'Pathology'),
  Spesialistmodel(image: 'lib/assets/icons/surgery.png', label: 'Surgery'),
  Spesialistmodel(image: 'lib/assets/icons/checkup.png', label: 'Dermatology'),
  Spesialistmodel(
    image: 'lib/assets/icons/endocrine.png',
    label: 'Endocronology',
  ),
  Spesialistmodel(
    image: 'lib/assets/icons/healthcare.png',
    label: 'Anesthesiology',
  ),
  Spesialistmodel(image: 'lib/assets/icons/pediatric.png', label: 'Pediatrics'),
  Spesialistmodel(
    image: 'lib/assets/icons/operating-room.png',
    label: 'General Surgery',
  ),
  Spesialistmodel(
    image: 'lib/assets/icons/psychiatrist.png',
    label: 'Psyciatry',
  ),
];
