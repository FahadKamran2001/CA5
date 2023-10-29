CREATE TABLE "Activity Participants" (
    Participant VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    id VARCHAR(255) NOT NULL,
    fav_food VARCHAR(255) NOT NULL, 
    PRIMARY KEY (id)
);

INSERT INTO "Activity Participants" (Participant, name, id, fav_food)
VALUES
    ('Task1 ', 'Fahad Kamran', 'i200983', 'Matan'),
    ('Task2', 'Atif Munir', 'i190600', 'Beef'),
    ('Task3', 'Ahmad Munir', 'i200977', 'Fish');

COMMIT;
