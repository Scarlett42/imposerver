BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "imposerver" (
    "id" bigserial PRIMARY KEY,
    "text" text NOT NULL
);


--
-- MIGRATION VERSION FOR imposerver
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('imposerver', '20240716181917167', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240716181917167', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
