# inventory-mobile
Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, dengan menggunakan fungsi seperti json.decode. Namun, iini tidak enak digunakan karean menggunakan Future<http.Response> yang mentah atau raw.

 Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest digunakan untuk menggunakan berbagai package dan autentikasi, dan dibagikan ke semua komponen dengan Provider untuk mendapatkan berbagai manfaat, seperti efisiean dalam menyebarkan ifnormasi ke widget lainnya, lazy-loading, dan mengalokasikan resource menajdi lebih sederhana. Sehingga, data dapat dipakai semua widget.

 Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Ketika mendapatkan data Json yang biasanya bentuk dari hasil request ke web service dengan GET, Json tersebut perlu dikonversi dengan metode agar data tersebut dapat dikenal oleh class model yang telah dibuat. 

 Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Flutter dapat mengontak Django dnegan menggunakan response seperti POST dan GET. Fungsi authentikasi berada di django, dan ketika menginput data di Flutter, dapat berhubungan dengan fungsi di django dan menunggu request.

 Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
Future: Komputasi asynchronous, yang menungggu suatu hal external kemudian menyediakan hasil.
Provider: Untuk dapat menyebarkan ifnromasi ke widget lainnya, seperti status login
FutureBuilder:Widget untuk membangun sendirinya berdasarkan interaksi snapshot dengan Future
ListView:approach untuk list, yang dapat menggunakan fungsi yang mengiterasikan list

 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
Mengecek link deployment tugas, dan memperbaiki error yang muncul.

 Membuat halaman login pada proyek tugas Flutter.
	Membuat file baru pada direktori screens, dengan meminta username dan password kemudian tombol untuk mendaftarkan data. pada tombol login, ada fungsi yang mengintegrasikan ke fungsi login di Django, dan ada kondisional berdasarkan kesuksesan login.

 Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
Pada tugas django, menginmport package dan membuat aplikasi baru untuk autentikasi, yang didalamnya berisi url dan view baru untuk fungsi login yang mengambil data yang diinput di flutter. Kemudian, dengan fungsi tersebut yang sudah merupakan web service, bisa diambil dengan memodifikasi flutter seperti menggunakan package http dan penambahan fungsi web service android.

 Membuat model kustom sesuai dengan proyek aplikasi Django.
Menggunakan website yang membantu membuat kode Flutter berdasarkan data yang berada di endpoint json django, yang berisi hal seperti atribut-atribut dari data tersebut untuk mengkonversinya sehingga bisa dikenal.

 Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
Membuat file baru, yang mengambil fungsi dan data dan file model dan web service django, untuk diiterasikan sesuai jumlah item.

 Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Pada setiap text yang dibuat, menggunakan container yang memungkinkan fungsi onlick, sehingga text dapat diclick untuk melakukan suatu fungsi. MaterialPageRoute & navigator dapat mengandung argumen untuk digunakan ke screen selanjutnya, gunakan untuk pass value dan atribut item yang diclick. Tampilkan atribut di screen baru yang digunakan, kemudian tampilkan dan tambahakan tombol kembali ke list.
