-- CreateTable
CREATE TABLE `BSU` (
    `idBSU` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NOT NULL,
    `alamat` VARCHAR(191) NULL,
    `Kelurahan` VARCHAR(191) NULL,
    `kecamatan` VARCHAR(191) NULL,
    `SK` BOOLEAN NULL,
    `Saldo` DOUBLE NULL,
    `akun_idakun` INTEGER NULL,
    `approver_idapprover` INTEGER NULL,

    UNIQUE INDEX `BSU_nama_key`(`nama`),
    PRIMARY KEY (`idBSU`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
