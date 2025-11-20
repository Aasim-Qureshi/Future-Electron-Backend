-- CreateTable
CREATE TABLE "Report" (
    "id" SERIAL NOT NULL,
    "reportId" TEXT NOT NULL,
    "title" TEXT,
    "submittedAt" TIMESTAMP(3),
    "checked" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Report_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Macro" (
    "id" SERIAL NOT NULL,
    "macroId" TEXT,
    "assetType" TEXT,
    "assetName" TEXT,
    "pgNo" TEXT,
    "model" TEXT,
    "ownerName" TEXT,
    "submitState" BOOLEAN NOT NULL DEFAULT false,
    "yearMade" TEXT,
    "finalValue" TEXT,
    "assetUsageId" TEXT,
    "valueBase" TEXT,
    "inspectionDate" TIMESTAMP(3),
    "productionCapacity" TEXT,
    "productionCapacityMeasuringUnit" TEXT,
    "productType" TEXT,
    "marketApproach" TEXT,
    "marketApproachValue" TEXT,
    "costApproach" TEXT,
    "costApproachValue" TEXT,
    "country" TEXT,
    "region" TEXT,
    "city" TEXT,
    "extra" JSONB,
    "reportId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Macro_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "Report_submittedAt_idx" ON "Report"("submittedAt");

-- CreateIndex
CREATE INDEX "Report_checked_idx" ON "Report"("checked");

-- CreateIndex
CREATE INDEX "Macro_reportId_idx" ON "Macro"("reportId");

-- CreateIndex
CREATE INDEX "Macro_submitState_idx" ON "Macro"("submitState");

-- AddForeignKey
ALTER TABLE "Macro" ADD CONSTRAINT "Macro_reportId_fkey" FOREIGN KEY ("reportId") REFERENCES "Report"("id") ON DELETE CASCADE ON UPDATE CASCADE;
