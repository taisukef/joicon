BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "TEntry" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"sName"	TEXT NOT NULL,
	"nAge"	INTEGER NOT NULL,
	"sEmail"	TEXT NOT NULL,
	"sCode"	TEXT NOT NULL,
	"sClass"	TEXT NOT NULL,
	"sTitle"	TEXT NOT NULL,
	"sPR"	TEXT,
	"bThumb"	BLOB,
	"bVideo"	BLOB,
	"bFile"	BLOB,
	"dCreated"	TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS "TTicket" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"sEmail"	TEXT NOT NULL,
	"sCode"	TEXT NOT NULL DEFAULT (hex(randomblob(4))) UNIQUE,
	"dCreated"	TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"dUsed"	TEXT
);
COMMIT;
