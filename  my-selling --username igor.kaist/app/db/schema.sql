BEGIN TRANSACTION;
CREATE TABLE article (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,dep NUMBER,parent NUMBER,type TEXT,edit NUMBER,sum NUMBER, rate NUMBER);
CREATE TABLE dep (id NUMBER,name TEXT,warning NUMBER);
INSERT INTO dep VALUES(1,'аксессуары',0);
INSERT INTO dep VALUES(2,'',0);
INSERT INTO dep VALUES(3,'',0);
INSERT INTO dep VALUES(4,'',0);
INSERT INTO dep VALUES(5,'',0);
INSERT INTO dep VALUES(6,'',0);
INSERT INTO dep VALUES(7,'',0);
INSERT INTO dep VALUES(8,'',0);
INSERT INTO dep VALUES(9,'',0);
INSERT INTO dep VALUES(10,'',0);
CREATE TABLE edit_log (date TEXT,time TEXT,title TEXT,event TEXT,original_date TEXT,original_time TEXT);
CREATE TABLE income (date TEXT, time TEXT,dep NUMBER,article TEXT,art_id NUMBER, sum NUMBER, rate NUMBER, name TEXT,edit NUMBER);
CREATE TABLE misc (name TEXT, value TEXT);
INSERT INTO misc VALUES('sync_enable',0);
INSERT INTO misc VALUES('sync_period',15);
INSERT INTO misc VALUES('sync_login','');
INSERT INTO misc VALUES('sync_point','');
INSERT INTO misc VALUES('sync_server','http://my-selling.ru');
INSERT INTO misc VALUES('sync_points','[]');
INSERT INTO misc VALUES('sync_passw','');
INSERT INTO misc VALUES('last_update','1');
INSERT INTO misc VALUES('update_date','2000-04-21');
INSERT INTO misc VALUES('update_time','13:00:00');


CREATE TABLE outcome (date TEXT,time TEXT,article TEXT,art_id NUMBER, sum NUMBER, name TEXT,edit NUMBER);
CREATE TABLE users (name TEXT,passw TEXT,caps TEXT);
INSERT INTO users VALUES('Администратор','','[]');

CREATE TABLE in_art (id NUMBER,date NUMBER,time NUMBER,dep TEXT,name TEXT,rate NUMBER,user NUMBER);
CREATE TABLE out_art (date NUMBER,time NUMBER,name TEXT,event TEXT,rate NUMBER,user NUMBER);
COMMIT;
