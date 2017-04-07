CREATE TABLE contact
(
    id      INT IDENTITY(1,1),
    name    NVARCHAR(30) NOT NULL,
    phone   NVARCHAR(20) NOT NULL,
    CONSTRAINT contact_pk PRIMARY KEY (id)
);


