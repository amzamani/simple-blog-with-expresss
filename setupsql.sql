 
CREATE database express_blog;
use express_blog;
 
  
    CREATE TABLE users(




        id INT AUTO_INCREMENT PRIMARY KEY,


        full_name VARCHAR(255) DEFAULT "none",
        email VARCHAR(100) DEFAULT "a",


        password VARCHAR(100) ,
        description text,
        role tinyint(2) DEFAULT 0,


        created_at datetime DEFAULT current_timestamp()


    );

CREATE TABLE posts(




   id INT AUTO_INCREMENT PRIMARY KEY,
author_id int DEFAULT NULL,


   title VARCHAR(255) NULL,
   slug VARCHAR(100) NULL,
   content longtext NULL,
   status tinyint(100) NULL,
   views int NULL ,
   comments int NULL,
   thumbnail text NULL,




   created_at datetime DEFAULT current_timestamp()




);

   


CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_id INT NULL,
   
    post_id INT NULL,
    user_name VARCHAR(100) NULL,
    user_email VARCHAR(100) NULL,
    comment text NULL,
    status tinyint(4) DEFAULT NULL,
    parent int(11) DEFAULT NULL,
    created_at datetime DEFAULT current_timestamp()
);

CREATE TABLE settings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    setting_name VARCHAR(100),
    
    setting_value text
);