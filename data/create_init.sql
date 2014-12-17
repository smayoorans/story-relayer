insert into Role(roleId, authority, description) values ('R1001','ROLE_ADMIN', 'Role for admin');
insert into Role(roleId, authority, description) values ('R1002','ROLE_USER', 'Role for user');


INSERT INTO User(userId, username, password) VALUES ('U1000', 'admin', 'password');
INSERT INTO Userrole(roleId, userId) VALUES ('R1001','U1000')
