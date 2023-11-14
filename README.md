# inventory-mobile
 Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Metode push() menambahkan suatu route ke dalam stack route yang berada di atas stack dan dikelola oleh Navigator, suatu widget yang menampilkan halaman seakan suatu stack. Sedangkan itu, metode pushReplacement() menghapus route lama yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route baru, atau menggantikan route yang ada di stack dengan route yang dipushReplacement. Kondisi elemen route yang berupa stack dibawahnya akan tidak diganti.

Contoh:
Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()));
Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(),
        ));
 
 Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Single child layout
Layout yang hanya menerima atau membungkus satu widget sebagai childnya, atau sebuah elemen dari layout view tersebut. Digunakan ketika menggunakan widget yang hanya memiliki property child, seperti Container().

Multi child layout
Layout yang dapat menerima lebih dari satu widget sebagai childnya. Digunakan ektika ingin menggunakan lebih dari satu properti untuk layout, seperti widget yang menggunakan properti children, seperti Column().

 Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
 TextFormField():sebuah widget untuk membuat form, dengan membungkus formfield dalam textfield. Widget ini membuat pembuatan form mudah. Dalamnya, ada:
 validator():digunakan untuk memvalidasi, dengan mereturn string yang merupakan error message
 onChanged():digunakan untuk mengambil nilai yang diinput
 decoration():untuk mengganti tampilan dari field form, seperti mengganti nama label dari text field form.
 elemen input:
 name:Sebagai nama dari item, dengan tipe string, digunakan untuk menyimpan nama dari item
 amount:Sebagai jumlah  dari item, dengan tipe int karena membutuhkan nomor, digunakan untuk menyimpan jumlah dari item
 deskripsi:Sebagai deskripsi dari item, dengan tipe string karena berupa tulisan, digunakan untuk menyimpan deskripsi dari item
 
 Bagaimana penerapan clean architecture pada aplikasi Flutter?
 Clean Architecture merupakan cara membangun atau arsitektur sebuah sistem yang melakukan separation of concerns dalam prosesnya, yang membagi prosesnya menjadi layer atau lapisan yang dapat mensimplifikasi pekerjaan. Dalam Flutter, clean architecture dalam suatu proyek dapat berupa membagi proyek menjadi layer sesuai kebutuhan, contohnya dibagi menjadi 3 layer Data, Domain, and Feature, dan 2 layer tambahan  Resources and Shared Library. Setiap layer tersebut dapat memiliki peran berbeda, misalnya seperti Feature yang mengandung UI, Data yang mengambil data, dan lain-lain. Untuk mengesekusi  cara tersebut, pembagian kode dan menyimpannya ke beberapa folder atau kelompok berdasarkan fungsi dapat dilakukan.
 
 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
 Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
 Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
 Memiliki sebuah tombol Save.
 Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
 Setiap elemen input tidak boleh kosong.
 Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
Membuat suatu file dart baru untuk menyimpan halaman form, membangun basis dengan juga membuat tiga variabel untuk elemen input, kemudian membangun suatu form dengan menggunakan body Form(), dengan memiliki child dari child TextFormField bagi setiap elemen input . Setiap TextFormField memiliki validator untuk validasi kosong dan sesuai tipe, serta setstate untuk mengambil isi form tersebut. Kemudian, tombol Save ditambah.
 
 Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
Dalam menu, menambahkan fungsi pindah halaman dengan Navigator.pushReplacement yang mendeteksi jika nama tombol Tambah Item, yang mereplace stack halaman ke halaman form.
 
 Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
Dalam tombol Save di pembuatan halaman form, menambahkan showdialog yang menunjukkan popup yang menampilkan variabel yang sudah diambil valuenya oleh fungsi pada textformfield.
 
 Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
 Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
 Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama.
 Ketika memiih opsi (Tambah Item), maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
 Membuat sebuah file baru untuk menyimpan pembangunan drawer, kemudian, pada file tersebut, menggunakan widget Drawer, kemudian menggunakan widget ListTile didalamnya untuk setiap opsi. Dalam ListTile, ada fungsi redirect pushReplacement yang mengarahkan ke halaman sesuai opsi.
