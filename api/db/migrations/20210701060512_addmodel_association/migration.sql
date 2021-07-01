-- CreateTable
CREATE TABLE "Association" (
    "relationshipId" SERIAL NOT NULL,
    "persion1Id" INTEGER NOT NULL,
    "persion2Id" INTEGER NOT NULL,
    "notes" TEXT NOT NULL,

    PRIMARY KEY ("relationshipId")
);

-- AddForeignKey
ALTER TABLE "Association" ADD FOREIGN KEY ("persion1Id") REFERENCES "Person"("personId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Association" ADD FOREIGN KEY ("persion2Id") REFERENCES "Person"("personId") ON DELETE CASCADE ON UPDATE CASCADE;
