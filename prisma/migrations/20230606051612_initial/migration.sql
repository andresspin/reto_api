-- CreateTable
CREATE TABLE `post` (
    `idpost` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) NOT NULL,
    `contenido` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`idpost`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comments` (
    `idcomments` INTEGER NOT NULL AUTO_INCREMENT,
    `comcontent` VARCHAR(255) NOT NULL,
    `idpost` INTEGER NOT NULL,

    PRIMARY KEY (`idcomments`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `comments` ADD CONSTRAINT `comments_idpost_fkey` FOREIGN KEY (`idpost`) REFERENCES `post`(`idpost`) ON DELETE RESTRICT ON UPDATE CASCADE;
