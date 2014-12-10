insert into Role(roleId, authority, description) values ('R1001','ROLE_ADMIN', 'Role for admin');
insert into Role(roleId, authority, description) values ('R1002','ROLE_USER', 'Role for user');



CREATE TABLE Role
(
  roleId VARCHAR(255) PRIMARY KEY NOT NULL,
  authority VARCHAR(255),
  description VARCHAR(255)
);
CREATE TABLE Story
(
  storyId VARCHAR(255) PRIMARY KEY NOT NULL,
  createDate VARCHAR(255),
  ownerId VARCHAR(255),
  summery TEXT
);
CREATE TABLE User
(
  userId VARCHAR(255) PRIMARY KEY NOT NULL,
  displayName VARCHAR(255),
  emailAddress VARCHAR(255),
  favCategory VARCHAR(255),
  firstName VARCHAR(255),
  lastName VARCHAR(255),
  password VARCHAR(255),
  username VARCHAR(255)
);
CREATE TABLE UserRole
(
  id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  roleId VARCHAR(255),
  userId VARCHAR(255)
);
