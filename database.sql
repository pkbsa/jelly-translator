CREATE TABLE translate_user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(120) NOT NULL UNIQUE,
    password VARCHAR(60) NOT NULL,
    language VARCHAR(10) DEFAULT 'en',
    phone_number VARCHAR(15) UNIQUE,
    color_setting VARCHAR(10) DEFAULT 'light'
);

CREATE TABLE translation_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    text VARCHAR(255) NOT NULL,
    source_lang VARCHAR(10) NOT NULL,
    target_lang VARCHAR(10) NOT NULL,
    translation VARCHAR(255) NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES translate_user(id)
);
