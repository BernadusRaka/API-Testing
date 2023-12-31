@DeleteAdmin
Feature: Delete Admin

  Background:
  Given Super Admin mengakses Endpoint API untuk menghapus akun admin

Scenario: Admin berhasil dihapus
When Super Admin menghapus akun admin
Then sistem seharusnya memberikan respons dengan status kode 200
And Admin menerima pesan akun sudah terhapus

#Scenario: Unauthorized access tanpa token
#When Super Admin menghapus akun admin tanpa token
#Then sistem seharusnya memberikan respon status 401 Unauthorized
#And sistem seharusnya menampilkan pesan kesalahan "Unauthorized Access"

Scenario: Menghapus Admin dengan ID yang tidak valid
When Super Admin menghapus akun admin dengan ID yang tidak valid
Then sistem seharusnya memberikan respons dengan status kode 404
And sistem seharusnya menampilkan pesan kesalahan untuk admin yang tidak ditemukan
