CREATE TABLE users (
	id int,
    name varchar(255),
    address varchar(255),
    position varchar(255),
    CONSTRAINT PK_Person PRIMARY KEY (id)
);

INSERT INTO users
VALUES (1, "jams", "kemanggisan", "mahasiswa");

INSERT INTO users
VALUES (2, "jenny", "beautiful hope", "idola korea");
