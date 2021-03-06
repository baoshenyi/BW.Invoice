
    PRAGMA foreign_keys = OFF

    drop table if exists "Account"

    drop table if exists "Balance"

    drop table if exists "Organization"

    drop table if exists "Vendor"

    PRAGMA foreign_keys = ON

    create table "Account" (
        Id  integer primary key autoincrement,
       Code TEXT,
       Name TEXT,
       BankAccountNumber TEXT,
       CurrencyCode TEXT,
       TaxType TEXT,
       Organization_id INT,
       constraint FKBDF317D4F1836D59 foreign key (Organization_id) references "Organization"
    )

    create table "Balance" (
        Id  integer primary key autoincrement,
       Outstanding NUMERIC,
       Overdue NUMERIC
    )

    create table "Organization" (
        Id  integer primary key autoincrement,
       ShortCode TEXT,
       Name TEXT,
       LegalName TEXT
    )

    create table "Vendor" (
        Id  integer primary key autoincrement,
       Name TEXT,
       ContactNumber TEXT,
       EmailAddress TEXT,
       BankAccountDetails TEXT,
       TaxNumber TEXT,
       PurchaseAccountCode TEXT,
       AccountNumber TEXT,
       Organization_id INT,
       constraint FK3BAA8674F1836D59 foreign key (Organization_id) references "Organization"
    )
