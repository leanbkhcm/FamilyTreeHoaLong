/*
  Warnings:

  - You are about to drop the `Marriage` table. If the table is not empty, all the data it contains will be lost.
  - Made the column `fatherId` on table `Person` required. This step will fail if there are existing NULL values in that column.
  - Made the column `motherId` on table `Person` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Person" ALTER COLUMN "fatherId" SET NOT NULL,
ALTER COLUMN "motherId" SET NOT NULL;

-- DropTable
DROP TABLE "Marriage";
