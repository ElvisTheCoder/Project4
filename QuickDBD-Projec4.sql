-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0m2LvP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "G20" (
    "LOCATION" varchar(64)   NOT NULL,
    "INDICATOR" varchar(64)   NOT NULL,
    "SUBJECT" varchar(64)   NOT NULL,
    "MEASURE" varchar(64)   NOT NULL,
    "FREQUENCY" varchar(64)   NOT NULL,
    "TIME" date   NOT NULL,
    "Value" float   NOT NULL,
    CONSTRAINT "pk_G20" PRIMARY KEY (
        "LOCATION"
     )
);

CREATE TABLE "GDP" (
    "LOCATION" varchar(64)   NOT NULL,
    "INDICATOR" varchar(64)   NOT NULL,
    "SUBJECT" varchar(64)   NOT NULL,
    "MEASURE" varchar(64)   NOT NULL,
    "FREQUENCY" varchar(64)   NOT NULL,
    "TIME" date   NOT NULL,
    "Value" float   NOT NULL
);

CREATE TABLE "LifeExp" (
    "LOCATION" varchar(64)   NOT NULL,
    "INDICATOR" varchar(64)   NOT NULL,
    "SUBJECT" varchar(64)   NOT NULL,
    "MEASURE" varchar(64)   NOT NULL,
    "FREQUENCY" varchar(64)   NOT NULL,
    "TIME" date   NOT NULL,
    "Value" float   NOT NULL
);

CREATE TABLE "Population" (
    "LOCATION" varchar(64)   NOT NULL,
    "INDICATOR" varchar(64)   NOT NULL,
    "SUBJECT" varchar(64)   NOT NULL,
    "MEASURE" varchar(64)   NOT NULL,
    "FREQUENCY" varchar(64)   NOT NULL,
    "TIME" date   NOT NULL,
    "Value" float   NOT NULL
);

CREATE TABLE "Edu" (
    "LOCATION" varchar(64)   NOT NULL,
    "INDICATOR" varchar(64)   NOT NULL,
    "SUBJECT" varchar(64)   NOT NULL,
    "MEASURE" varchar(64)   NOT NULL,
    "FREQUENCY" varchar(64)   NOT NULL,
    "TIME" date   NOT NULL,
    "Value" float   NOT NULL
);

CREATE TABLE "Unemployment" (
    "LOCATION" varchar(64)   NOT NULL,
    "INDICATOR" varchar(64)   NOT NULL,
    "SUBJECT" varchar(64)   NOT NULL,
    "MEASURE" varchar(64)   NOT NULL,
    "FREQUENCY" varchar(64)   NOT NULL,
    "TIME" date   NOT NULL,
    "Value" float   NOT NULL
);

CREATE TABLE "UN" (
    "Region_subregion_country_area" varchar(64)   NOT NULL,
    "Type" varchar(64)   NOT NULL,
    "Year" date   NOT NULL,
    "TotalPopulationAsOf1January(thousands)" float   NOT NULL,
    "TotalPopulationAsOf1July(thousands)" float   NOT NULL,
    "PopulationDensityAsOf1July(PersonsPerSquareKm)" float   NOT NULL,
    "PopulationSexRatioAsOf1July(MalesPer100Females)" float   NOT NULL,
    "NaturalChangeBirthsMinusDeaths(thousands)" float   NOT NULL,
    "RateOfNaturalChange(Per1000Population)" float   NOT NULL,
    "PopulationChange(thousands)" float   NOT NULL,
    "PopulationGrowthe(percentage)" float   NOT NULL,
    "PopulationAnnualDoublingTime(years)" date   NOT NULL,
    "Births(thousands)" float   NOT NULL,
    "CrudeBirthRate(birthsPer1000Population)" float   NOT NULL,
    "TotalFertilityRate(LiveBirthsPerWoman)" float   NOT NULL,
    "NetReproductioRate(SurvivingDaughtersPerWoman)" float   NOT NULL,
    "MeanAgeChildbearing(years)" float   NOT NULL,
    "SexRatioAtBirth(MalesPer100FemaleBirths)" float   NOT NULL,
    "TotalDeaths(thousands)" float   NOT NULL,
    "CrudeDeathRate(DeathsPer1000Population)" float   NOT NULL,
    "LifeExpectancyAtBirthBothSexes(years)" date   NOT NULL,
    "InfantMortalityRate(InfantDeathsPer1000LiveBirths)" float   NOT NULL,
    "LiveBirthsSurvivingToAge1(thousands)" float   NOT NULL
);

ALTER TABLE "GDP" ADD CONSTRAINT "fk_GDP_LOCATION" FOREIGN KEY("LOCATION")
REFERENCES "G20" ("LOCATION");

ALTER TABLE "LifeExp" ADD CONSTRAINT "fk_LifeExp_LOCATION" FOREIGN KEY("LOCATION")
REFERENCES "G20" ("LOCATION");

ALTER TABLE "Population" ADD CONSTRAINT "fk_Population_LOCATION" FOREIGN KEY("LOCATION")
REFERENCES "G20" ("LOCATION");

ALTER TABLE "Edu" ADD CONSTRAINT "fk_Edu_LOCATION" FOREIGN KEY("LOCATION")
REFERENCES "G20" ("LOCATION");

ALTER TABLE "Unemployment" ADD CONSTRAINT "fk_Unemployment_LOCATION" FOREIGN KEY("LOCATION")
REFERENCES "G20" ("LOCATION");

ALTER TABLE "UN" ADD CONSTRAINT "fk_UN_Region_subregion_country_area_Year" FOREIGN KEY("Region_subregion_country_area", "Year")
REFERENCES "G20" ("LOCATION", "TIME");

