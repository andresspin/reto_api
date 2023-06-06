/*
  Warnings:

  - You are about to drop the column `idpost` on the `comments` table. All the data in the column will be lost.
  - You are about to alter the column `comcontent` on the `comments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(255)` to `VarChar(191)`.
  - You are about to alter the column `nombre` on the `post` table. The data in that column could be lost. The data in that column will be cast from `VarChar(255)` to `VarChar(191)`.
  - You are about to alter the column `contenido` on the `post` table. The data in that column could be lost. The data in that column will be cast from `VarChar(255)` to `VarChar(191)`.
  - Added the required column `post_idpost` to the `comments` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `comments` DROP FOREIGN KEY `comments_idpost_fkey`;

-- AlterTable
ALTER TABLE `comments` DROP COLUMN `idpost`,
    ADD COLUMN `post_idpost` INTEGER NOT NULL,
    MODIFY `comcontent` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `post` MODIFY `nombre` VARCHAR(191) NOT NULL,
    MODIFY `contenido` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `comments` ADD CONSTRAINT `comments_post_idpost_fkey` FOREIGN KEY (`post_idpost`) REFERENCES `post`(`idpost`) ON DELETE RESTRICT ON UPDATE CASCADE;
