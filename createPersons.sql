CREATE DATABASE mirwais;
USE mirwais;

CREATE TABLE user_roles
(
    ID INT NULL
    AUTO_INCREMENT,
usertype VARCHAR
    (20) NOT NULL,
PRIMARY KEY
    (ID)
 );
    INSERT INTO User_roles
        (Name)
    VALUES('Admin');
    INSERT INTO User_roles
        (Name)
    VALUES('customer');

    CREATE TABLE COUNTRIES
    (
        COUNTRY_ID INT NOT NULL
        AUTO_INCREMENT,
     COUNTRY_NAME VARCHAR
        (25) NOT NULL, 
     PRIMARY KEY
        (COUNTRY_ID));

        INSERT INTO COUNTRIES
            (COUNTRY_NAME)
        VALUES('Romania');
        INSERT INTO COUNTRIES
            (COUNTRY_NAME)
        VALUES('USA');
        INSERT INTO COUNTRIES
            (COUNTRY_NAME)
        VALUES('Luxembourg');
        INSERT INTO COUNTRIES
            (COUNTRY_NAME)
        VALUES('Afghanistan');

        CREATE TABLE people
        (
            PERSON_ID INT NOT NULL
            AUTO_INCREMENT, 
    First_Name VARCHAR
            (25) NOT NULL, 
    Second_Name VARCHAR
            (25) NOT NULL,
    Age INT,
    UserName VARCHAR
            (25) NOT NULL UNIQUE,
    Password VARCHAR
            (250) NOT NULL,
    Nationality INT NOT NULL,
    User_role INT NOT NULL,
    PRIMARY KEY
            (PERSON_ID),
    FOREIGN KEY
            (Nationality) REFERENCES COUNTRIES
            (COUNTRY_ID),
    FOREIGN KEY
            (User_role) REFERENCES User_roles
            (ID) 
);
