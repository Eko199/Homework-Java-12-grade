USE Facebook;

ALTER TABLE friends
ADD FOREIGN KEY (uid1) REFERENCES users(id);
ALTER TABLE friends
ADD FOREIGN KEY (uid2) REFERENCES users(id);

ALTER TABLE groupMembers
ADD FOREIGN KEY (gid) REFERENCES `groups`(id);
ALTER TABLE groupMembers
ADD FOREIGN KEY (uid) REFERENCES users(id);

ALTER TABLE walls
ADD FOREIGN KEY (ownerId) REFERENCES users(id);
ALTER TABLE walls
ADD FOREIGN KEY (authorId) REFERENCES users(id);