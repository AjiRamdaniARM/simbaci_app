/*
  Warnings:

  - You are about to alter the column `SK` on the `bsu` table. The data in that column could be lost. The data in that column will be cast from `TinyInt` to `LongBlob`.

*/
-- AlterTable
ALTER TABLE `bsu` MODIFY `SK` LONGBLOB NULL;

-- CreateTable
CREATE TABLE `nasabah` (
    `idnasabah` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NULL,
    `jenisKelamin` VARCHAR(191) NULL,
    `NIK` VARCHAR(191) NULL,
    `alamat` VARCHAR(191) NULL,
    `kelurahan` LONGBLOB NULL,
    `kecamatan` DOUBLE NULL,
    `Saldo` DOUBLE NULL,
    `tempatLahir` VARCHAR(191) NULL,
    `tglLahir` DATETIME(3) NULL,
    `BSU_idBSU` DATETIME(3) NULL,

    PRIMARY KEY (`idnasabah`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `jadwal` (
    `idjadwal` INTEGER NOT NULL AUTO_INCREMENT,
    `hari` DATETIME(3) NULL,
    `jadwalMulai` DATETIME(3) NULL,
    `jadwalSelesai` DATETIME(3) NULL,
    `BSU_idBSU` INTEGER NULL,

    PRIMARY KEY (`idjadwal`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `JenisSampah` (
    `idjadwal` INTEGER NOT NULL AUTO_INCREMENT,
    `hari` DATETIME(3) NULL,
    `jadwalMulai` DATETIME(3) NULL,
    `jadwalSelesai` DATETIME(3) NULL,
    `BSU_idBSU` INTEGER NULL,

    PRIMARY KEY (`idjadwal`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Pengurus` (
    `idpengurus` INTEGER NOT NULL AUTO_INCREMENT,
    `namaPengurus` DATETIME(3) NULL,
    `jenisKelamin` DATETIME(3) NULL,
    `alamat` VARCHAR(191) NULL,
    `pekerjaan` VARCHAR(191) NULL,
    `tempatLahir` VARCHAR(191) NULL,
    `tglLahir` VARCHAR(191) NULL,
    `Ktp` LONGBLOB NULL,
    `BSU_idBSU` INTEGER NULL,
    `akun_idakun` INTEGER NULL,

    PRIMARY KEY (`idpengurus`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Admin` (
    `idAdmin` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NULL,
    `jabatan` VARCHAR(191) NULL,
    `akun_idakun` INTEGER NULL,

    PRIMARY KEY (`idAdmin`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DLH` (
    `idDlh` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NULL,
    `jabatan` VARCHAR(191) NULL,
    `akun_idakun` INTEGER NULL,

    PRIMARY KEY (`idDlh`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `volunteer` (
    `idVolunteer` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NULL,
    `task` VARCHAR(191) NULL,
    `akun_idakun` INTEGER NULL,

    PRIMARY KEY (`idVolunteer`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ESWKA` (
    `idPejabat` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NULL,
    `jabatan` VARCHAR(191) NULL,
    `akun_idakun` INTEGER NULL,

    PRIMARY KEY (`idPejabat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `HargaSampahBSI` (
    `idHargaSampah` INTEGER NOT NULL AUTO_INCREMENT,
    `Harga` DOUBLE NULL,
    `CreatedAt` VARCHAR(191) NULL,
    `JenisSampah_idProfileSampah` INTEGER NULL,

    PRIMARY KEY (`idHargaSampah`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `HargaSampahBSU` (
    `idHargaSampahBSU` INTEGER NOT NULL AUTO_INCREMENT,
    `Harga` DOUBLE NULL,
    `CreatedAt` VARCHAR(191) NULL,
    `JenisSampah_idProfileSampah` INTEGER NULL,

    PRIMARY KEY (`idHargaSampahBSU`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BSU_has_volunteer` (
    `BSU_idBSU` INTEGER NOT NULL AUTO_INCREMENT,
    `volunteer_idvolunteer` INTEGER NULL,
    `luasTempat` DOUBLE NULL,
    `lokasi` VARCHAR(191) NULL,
    `KondisiBangunan` ENUM('Bagus', 'Sedang', 'Buruk') NULL,
    `Fasilitas` VARCHAR(191) NULL,
    `dokumentasiKunjungan` LONGBLOB NULL,

    PRIMARY KEY (`BSU_idBSU`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Transaksi` (
    `idTransaksi` INTEGER NOT NULL AUTO_INCREMENT,
    `nasabah_idNasabah` INTEGER NULL,
    `totalHarga` DOUBLE NULL,
    `CreatedAt` VARCHAR(191) NULL,

    PRIMARY KEY (`idTransaksi`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TransaksiDetail` (
    `Transaksi_idTransaksi` INTEGER NOT NULL AUTO_INCREMENT,
    `JenisSampah_idProfilSampah` INTEGER NULL,
    `Berat` DOUBLE NULL,
    `HargaTotal` DOUBLE NULL,

    PRIMARY KEY (`Transaksi_idTransaksi`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Pembeli` (
    `idpembeli` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NULL,
    `alamat` VARCHAR(191) NULL,
    `noTelp` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NULL,
    `akun_idakun` INTEGER NULL,

    PRIMARY KEY (`idpembeli`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Pembayaran` (
    `idPembayaran` INTEGER NOT NULL AUTO_INCREMENT,
    `jumlah` DECIMAL(65, 30) NULL,
    `metode_pembayaran` VARCHAR(191) NULL,
    `status_pembayaran` VARCHAR(191) NULL,
    `tanggal_pembayaran` DATETIME(3) NULL,

    PRIMARY KEY (`idPembayaran`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MetodePengiriman` (
    `idMetodePengiriman` INTEGER NOT NULL AUTO_INCREMENT,
    `namaMetodePengiriman` ENUM('Dijemput', 'Dikirimkan') NULL,
    `waktuPengiriman` DATETIME(3) NULL,
    `statusPengiriman` ENUM('BelumDijemput', 'SudahDijemput', 'BelumDikrim', 'SedangDikrim', 'SudahDikrim') NULL,
    `alamatPengiriman` VARCHAR(191) NULL,

    PRIMARY KEY (`idMetodePengiriman`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Pesanan` (
    `idpesanan` INTEGER NOT NULL AUTO_INCREMENT,
    `idpembeli` INTEGER NULL,
    `totalHargaKeseluruhan` DOUBLE NULL,
    `status` ENUM('berhasil', 'diproses', 'gagal') NULL,
    `tanggalPembuatan` DATETIME(3) NULL,
    `Pembayaran_idPembayaran` INTEGER NULL,
    `MetodePengiriman_idMetodePengiriman` INTEGER NULL,

    PRIMARY KEY (`idpesanan`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kategoriProduk` (
    `idkategoriProduk` INTEGER NOT NULL AUTO_INCREMENT,
    `namaKategori` VARCHAR(191) NULL,

    PRIMARY KEY (`idkategoriProduk`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Produk` (
    `idProduk` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_produk` VARCHAR(191) NULL,
    `Harga` DOUBLE NULL,
    `kuantitas` DOUBLE NULL,

    PRIMARY KEY (`idProduk`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `detailPesanan` (
    `pesanan_idpesanan` INTEGER NOT NULL AUTO_INCREMENT,
    `Produk_idProduk` INTEGER NULL,
    `kuantitas` DOUBLE NULL,
    `totalHarga` DOUBLE NULL,
    `diskon` DOUBLE NULL,

    PRIMARY KEY (`pesanan_idpesanan`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
