/*
  Warnings:

  - You are about to drop the `UserExample` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "Person" ALTER COLUMN "fatherId" DROP NOT NULL,
ALTER COLUMN "motherId" DROP NOT NULL,
ALTER COLUMN "email" DROP NOT NULL;

-- DropTable
DROP TABLE "UserExample";
