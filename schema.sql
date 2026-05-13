CREATE TABLE Profils (
	id_profil VARCHAR(30) NOT NULL PRIMARY KEY,
    motdepasse VARCHAR(255),
    naissance DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE Sessions (
	id_session INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_profil VARCHAR(255),
    FOREIGN KEY (id_profil) REFERENCES Profils(id_profil),
    date DATE
);

CREATE TABLE Detections(
	id_detection INTEGER AUTO_INCREMENT PRIMARY KEY,
    id_session INTEGER,
    FOREIGN KEY (id_session) REFERENCES Sessions(id_session),
    emotion ENUM('joie', 'tristesse', 'colere', 'surprise', 'peur'),
    heure DATETIME,
    landmarks JSON
    
);