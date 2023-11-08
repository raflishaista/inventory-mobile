# inventory-mobile
Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Ketika widget yang dikembangkan dapat berganti ketika suatu user berinteraksi dengannya, maka widget tersebut stateful. Stateless widget, dalam pengembangan, merupakan widget yang tidak akan berubah.

Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Di Flutter, ada yang bilang bahwa semua hal di Flutter merupakan widget. Ini karena inti dari layout Flutter adalah widget. Oleh karena itu, di tugas ini, banyak widget yang digunakan, dimana setiap widget disini mengextend class widget, baik stateless atau stateful.
di MyApp:
MaterialApp=aplikasi yang menggunakan Material Design
ThemeData=mengurus tema dari aplikasi
di MyHomePage
Scaffold()=Untuk mengimpelmentasikan struktur layout visual basic Material Design, sebagai inti yang memberikan API untuk menunjukkan drawers
Appbar()=mendisplay appbar, suatu toolbar dan widget lain
SingleChildScrollView()=sebagai wrapper yang dapat discroll
Padding()=Menentukan padding dari halaman
Column()=menampilkan children secara vertikal
Text()=menampilkan text, dapat ditentukan formattingnya seperti aligmnemt
Gridview()=untuk mendapatkan layout grid
di ShopCard()
Material=Clipping, elevasi, efek Ink
Colors=menentukan warna
InkWell= sebagai penanda area kode yang responsif terhadap sentuhan
SnackBar=popup message
Container()=sebagai container atau wadah untuk menyimpan berbagai elemen
Center()=menspesifikasi posisi di tengah
Column()=layout dalam bentuk kolom
Icon()=memunculkan gambar icon, spesifikasi dapat diatur

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
Melakukan command flutter create untuk membuat suatu app flutter awal, kemudian mengubah program base tersebut untuk memunculkan judul, mengubah warna dan memunculkan beberapa tombol berupa card stateless widget. 

 Membuat tiga tombol sederhana dengan ikon dan teks untuk:
 Melihat daftar item (Lihat Item)
 Menambah item (Tambah Item)
 Logout (Logout)
 Membuat suatu class bernama ShopItem yang menagmbil argument text yang berisi text tersebut dan juga argumen icon yang sesuai, class lain ShopCard yang merupakan material yang mengandung       spesifikasi card yang akan menjadi tombol, kemudian, di main page, menampilkan semua ShopItem dalam bentuk ShopCard sebagai isi pada ShopCard tersebut, dalam suatu layout grid.
 
 
 Memunculkan Snackbar dengan tulisan:
 "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
 "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
 "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
 Dalam ShopCard yang menspesifikasi card yang akan digunakan sebagai tombol,suatu widget InkWell yang menjadikan tombol responsif terhadap sentuhan ditambahkan, dengan didalamnya dimasukkan fungsi onTap() yang memungkinkan sesuatu terjadi ketika diklik/pencet. Kemudian, didalamnya, menambahkan fungsi munculnya snackbar sesuai dari nama tombol.

