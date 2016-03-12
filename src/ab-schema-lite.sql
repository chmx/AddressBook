-- SQLite 3 schema
CREATE TABLE contact (
  id            INTEGER PRIMARY KEY,
  firstname     TEXT NOT NULL,
  middlename    TEXT,
  lastname      TEXT,
  phone         TEXT
);
