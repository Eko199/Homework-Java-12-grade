USE Facebook;

INSERT INTO users (email, pass) 
VALUES
	("aferf@dfasv.fgds", "w4trbhdfgb"),
	("ghtred@sefgdb.b", "rtyujdsegfd");


INSERT INTO friends (uid1, uid2) 
VALUES (1, 2);

INSERT INTO walls (ownerId, authorId, postDate)
VALUES (1, 2, "2022-11-13");

INSERT INTO `groups` (`name`, `description`)
VALUES ("Protectors of Memes", "Best group ig");

INSERT INTO groupmembers (gid, uid)
VALUES (1, 1), (1, 2);