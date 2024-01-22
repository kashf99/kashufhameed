class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Bachelors of Science, Bioinformatics',
    organization: 'International Islamic University, Islamabad',
    date: 'AUG 2023',
    skills:
        '\n. Programming (C, C++, Java, Python, R)\n. Database Development\n. Data Structures & Algorithms\n. Software Engineering',
    credential:
        'https://www.coursera.org/account/accomplishments/certificate/HQ4LFHSF4LKZ',
  ),
  CertificateModel(
    name: 'Mobile Application Development',
    organization: 'National University of Technology, Islamabad',
    date: 'SEPT 2022',
    skills: '\n. Dart, Flutter\n. iOS Development\n. Android Development\n. Web Development',
    credential:
        'https://www.linkedin.com/learning/certificates/450fc4e2f495726aea50a067caf586869ccf0cb92ebcc5a4c7b5648a95754a8f',
  ),
  CertificateModel(
    name: 'Search Engine Optimization',
    organization: 'Virtual University',
    date: 'JUN 2020',
    skills: '\n. Keyword Research\n. Link Building\n. Content Optimization\n. Critical Thinking & Analysis',
    credential:
        'https://www.linkedin.com/learning/certificates/450fc4e2f495726aea50a067caf586869ccf0cb92ebcc5a4c7b5648a95754a8f',
  ),
  CertificateModel(
    name: 'Higher Secondary School Certificate',
    organization: 'Federal Board of Intermediate and Secondary Education',
    date: 'AUG 2017',
    skills: '\n. Mathematics\n. Physics\n. Chemistry',
    credential:
        'https://www.udemy.com/certificate/UC-5b01c756-0d20-4342-94e6-9d5860d1c95e/',
  ),
  CertificateModel(
    name: 'Secondary School Certificate',
    organization: 'Federal Board of Intermediate and Secondary Education',
    date: 'JUN 2015',
    skills: '\n. Mathematics\n. Biology\n. Physics\n. Chemistry',
    credential:
        'https://www.udemy.com/certificate/UC-5b01c756-0d20-4342-94e6-9d5860d1c95e/',
  ),
];
