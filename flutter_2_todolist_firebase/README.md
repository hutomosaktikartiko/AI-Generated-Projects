# Todo List App with Firebase

This is a simple To-Do List app built using Flutter. The app allows users to add, edit, and mark tasks as completed. Data is stored locally, and the app uses Riverpod for state management.

## Tools Used

- **Deepseek**: For prompt generator.
- **Cursor**: For code generator.

## Prompt Used

```markdown
Saya sedang membuat project Todo list yang bisa menyimpan data di firestore menggunakan Flutter dari awal. Bantu saya membuat semua bagian, mulai dari UI hingga logika dasar. Berikut detailnya:

1. Struktur Project:

   - Buatkan struktur folder yang rapi untuk project Flutter menggunakan clean architecture.
   - Gunakan state management Riverpod untuk mengelola state aplikasi.

2. UI:
   Buatkan 3 halaman (screens):

   - HomeScreen: Tampilkan daftar item dalam bentuk ListView.
   - AddScreen: Form untuk menambahkan todo baru.
   - EditScreen: Form untuk mengedit todo.

3. Logika Dasar:

   - Buatkan model data sederhana dengan atribut seperti id, judul, description, waktu, dan isCompleted.
   - Buatkan service atau provider untuk mengelola data (misalnya, menambahkan, menghapus, atau mengupdate item).
   - Implementasikan navigasi antara halaman menggunakan GoRouter.

4. Tambahan:

   - Gunakan desain modern dan responsif dengan ukuran device tab/ipad Material Design.
   - Tambahkan AppBar dengan judul yang sesuai di setiap halaman.
   - Gunakan package Flutter yang umum seperti fluttertoast untuk menampilkan pesan toast.
   - Pengguna bisa mengganti status isCompleted kalau todo sudah selesai.
   - Perubahan pada data juga dilakukan realtime, dalam artian ketika ada data baru, diedit, dan diubah statusnya maka akan berpengaruh ke listview tanpa harus reload manual.
   - Gunakan loading indicator ketika sedang memproses data.
   - File google-services.json sudah disiapkan dan diatur di project Flutter, jadi anda tinggal config di build.gradle.

Buatkan kode lengkap untuk semua bagian di atas.
```
