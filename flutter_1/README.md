# Simple Todo List App with Local Storage

This is a simple To-Do List app built using Flutter. The app allows users to add, edit, and mark tasks as completed. Data is stored locally, and the app uses Riverpod for state management.

## Tools Used

- **Deepseek**: For prompt generator.
- **Cursor**: For code generator.

## Prompt Used

```markdown
"Saya sedang membuat project Todo list simple yang bisa menyimpan data di local menggunakan Flutter dari awal. Bantu saya membuat semua bagian, mulai dari UI hingga logika dasar. Berikut detailnya:

1. Struktur Project:

   - Buatkan struktur folder yang rapi untuk project Flutter menggunakan clean architecture.
   - Gunakan state management Riverpod untuk mengelola state aplikasi.

2. UI:
   Buatkan 3 halaman (screens):

   - HomeScreen: Tampilkan daftar item dalam bentuk ListView.
   - AddScreen: Form untuk menambahkan todo baru.
   - EditScreen: Form untuk mengedit todo.
     Gunakan desain modern dan responsif dengan ukuran device tab/ipad Material Design.
     Tambahkan AppBar dengan judul yang sesuai di setiap halaman.

3. Logika Dasar:

   - Buatkan model data sederhana dengan atribut seperti id, judul, description, waktu, dan isCompleted.
   - Buatkan service atau provider untuk mengelola data (misalnya, menambahkan, menghapus, atau mengupdate item).
   - Implementasikan navigasi antara halaman menggunakan Navigator.

4. Tambahan:
   - Gunakan package Flutter yang umum seperti fluttertoast untuk menampilkan pesan toast.
   - Pastikan kode bersih, terorganisir, dan mudah dipahami.
   - Pengguna bisa mengganti status isCompleted kalau todo sudah selesai.
   - Perubahan pada data juga dilakukan realtime, dalam artian ketika ada data baru, diedit, dan diubah statusnya maka akan berpengaruh ke listview tanpa harus reload manual.

Buatkan kode lengkap untuk semua bagian di atas. Jika ada yang kurang jelas, tanyakan kepada saya untuk detail lebih lanjut."
```
