-- AlterTable
ALTER TABLE "Person" ALTER COLUMN "personId" DROP DEFAULT;
DROP SEQUENCE "Person_personId_seq";
