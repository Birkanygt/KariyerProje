Projenin içine vevn kurulur.venv içine aşağıdaki paketler eklenir.

robotframework

robotframeworkseleniumlibrary


Testi koşmak için;

robot -d results  Tests/KariyerFiltersTest.robot

Testi Tekli olarak koşmak için;

robot -d results -t 'All Filters Delete and Compare Tests'  Tests/KariyerFiltersTest.robot


robot -d results;
Koşulan testleri loglamak için kullanılır.