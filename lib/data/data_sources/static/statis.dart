import 'package:etisaq/core/constant/app_images.dart';

List<Map<String, dynamic>> homeList = [
  {
    "name": "التكوين العلمي",
    "description": "اختر أحد المسارات التعليمية المناسبة",
    "categories": [
      {
        'id': '1',
        'name': 'البرنامج الأساسي',
        'description':
            'يشمل البرنامج المعارف التأسيسيّة في العلوم\n العربية و الشّرعيّة',
        'subcategories': [
          {
            'title': 'السّيرة النّبويّة',
            'subtitle': 'البرنامج الأساسي , برنامج التّكوين العلمي',
            'image': AppImages.image1,
            'rate': 5.0,
          },
          {
            'title': 'الحديث النبوي',
            'subtitle': 'البرنامج الأساسي , برنامج التّكوين العلمي',
            'image': AppImages.image4,
            'rate': 4.0,
          }
        ],
      },
      {
        'id': '2',
        'name': 'البرنامج التربوي',
        'description':
            'يشمل البرنامج المعارف التأسيسيّة التي تسهم في\nرفع الكفاءة التّربويّة',
        'subcategories': [
          {
            'title': 'التّربية النّبويّة',
            'subtitle': 'البرنامج التّربوي , برنامج التّكوين العلمي',
            'image': AppImages.image3,
            'rate': 5.0,
          },
          {
            'title': 'مقدمة في تطوير الذات',
            'subtitle': 'البرنامج الأساسي , برنامج التّكوين العلمي',
            'image': AppImages.image2,
            'rate': 4.0,
          }
        ],
      },
    ]
  },
  {
    "name": "برنامج الاجازة",
    "description": "اختر أحد المسارات التعليمية المناسبة",
    "categories": [
      {
        'id': '1',
        'name': 'المنهجية و التأصيل',
        'description':
            'يعنى البرنامج بالتَّأصيل العلميِّ لطلاب العلم في المجالات\nذات الصِّلة بالقرآن الكريم، والقراءات القرآنيَّة',
        'subcategories': [
          {
            'title': 'التجويد المصوّر',
            'subtitle': 'المنهجيّة و التّأصيل , برنامج الاجازة القرآنيّة',
            'image': AppImages.image5,
            'rate': 5.0,
          },
        ]
      },
      {
        'id': '2',
        'name': 'العرض و السماع',
        'description': '',
        'subcategories': []
      },
    ]
  },
];
