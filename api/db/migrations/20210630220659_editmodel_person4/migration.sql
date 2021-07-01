/*
  Warnings:

  - You are about to drop the column `email` on the `Person` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[fatherId,motherId]` on the table `Person` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[fatherId]` on the table `Person` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[motherId]` on the table `Person` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Person.email_unique";

-- AlterTable
CREATE SEQUENCE "person_personid_seq";
ALTER TABLE "Person" DROP COLUMN "email",
ALTER COLUMN "personId" SET DEFAULT nextval('person_personid_seq');
ALTER SEQUENCE "person_personid_seq" OWNED BY "Person"."personId";

-- CreateIndex
CREATE UNIQUE INDEX "Person.fatherId_motherId_unique" ON "Person"("fatherId", "motherId");

-- CreateIndex
CREATE UNIQUE INDEX "Person_fatherId_unique" ON "Person"("fatherId");

-- CreateIndex
CREATE UNIQUE INDEX "Person_motherId_unique" ON "Person"("motherId");

-- AddForeignKey
ALTER TABLE "Person" ADD FOREIGN KEY ("fatherId") REFERENCES "Person"("personId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Person" ADD FOREIGN KEY ("motherId") REFERENCES "Person"("personId") ON DELETE CASCADE ON UPDATE CASCADE;
