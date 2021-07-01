/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Post";

-- CreateTable
CREATE TABLE "Marriages" (
    "marriageId" SERIAL NOT NULL,
    "husbandId" INTEGER NOT NULL,
    "wifeId" INTEGER NOT NULL,
    "notes" TEXT NOT NULL,

    PRIMARY KEY ("marriageId")
);

-- AddForeignKey
ALTER TABLE "Marriages" ADD FOREIGN KEY ("husbandId") REFERENCES "Person"("personId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Marriages" ADD FOREIGN KEY ("wifeId") REFERENCES "Person"("personId") ON DELETE CASCADE ON UPDATE CASCADE;
