-- CreateTable
CREATE TABLE "Marriage" (
    "marriageId" SERIAL NOT NULL,
    "husbandId" INTEGER,
    "wifeId" INTEGER,

    PRIMARY KEY ("marriageId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Marriage.husbandId_wifeId_unique" ON "Marriage"("husbandId", "wifeId");
