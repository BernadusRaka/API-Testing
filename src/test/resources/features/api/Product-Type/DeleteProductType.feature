@DeleteProduct
Feature: Delete Product Type

  Background:
    Given Admin mengatur API Endpoint untuk menghapus data tipe produk

  Scenario: Product Type berhasil dihapus
    When pengguna mengakses endpoint untuk menghapus Product Type dengan ID tersebut
    Then sistem seharusnya memberikan respons dengan status kode 200
    And Pengguna mendapatkan pesan untuk produk yang sudah terhapus

#Scenario: Admin Unauthorized access tanpa token ingin menghapus tipe produk
#When pengguna mencoba mengakses endpoint untuk menghapus Product Type tanpa token
#Then sistem seharusnya memberikan respon status 401 Unauthorized
#And sistem seharusnya menampilkan pesan kesalahan

  Scenario: Menghapus Product Type dengan ID yang tidak valid
    When pengguna mengakses endpoint untuk menghapus Product Type dengan ID yang tidak valid
    Then sistem seharusnya memberikan respons dengan status kode 404
    And sistem seharusnya menampilkan pesan kesalahan untuk produk yang tidak ditemukan

