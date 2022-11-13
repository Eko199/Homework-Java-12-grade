USE Facebook;

ALTER TABLE Users
ADD COLUMN registrationDate DATE;

ALTER TABLE `Groups`
ALTER `description` SET DEFAULT '';