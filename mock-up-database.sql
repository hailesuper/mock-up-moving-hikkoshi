-- Drop the database if it already exists
DROP DATABASE IF EXISTS mockup;
-- Create database
CREATE DATABASE IF NOT EXISTS mockup;
USE mockup;

-- Plans
DROP TABLE IF EXISTS plans;
CREATE TABLE IF NOT EXISTS plans (
PRIMARY KEY (id), 	
	id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    -- plan_name, price
);

-- Create table user
DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers ( 	
	id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`email` 		CHAR(50) NOT NULL UNIQUE CHECK (LENGTH(`email`) >= 6 AND LENGTH(`email`) <= 50),
	`password` 		VARCHAR(800) NOT NULL,
    `full_name` 	NVARCHAR(50) NOT NULL,
    `role` 			ENUM('ADMIN','CUSTOMER','STAFF') DEFAULT 'CUSTOMER',
	`status`		TINYINT DEFAULT 0 -- 0: Not Active, 1: Active
);

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders ( 	
	id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    -- current_city, new_city, moving_date, plan_id, customer_id, is_has_apartment_already, distance
);

DROP TABLE IF EXISTS services;
CREATE TABLE IF NOT EXISTS services ( 	
	id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    -- service_content, service_weight
);

DROP TABLE IF EXISTS plan_services;
CREATE TABLE IF NOT EXISTS plan_services (
-- primary plan_id, service_id 	
	plan_id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
);

DROP TABLE IF EXISTS order_status;
CREATE TABLE IF NOT EXISTS order_status ( 	
	order_id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    -- payment_status, order_status
);

DROP TABLE IF EXISTS order_service_status;
CREATE TABLE IF NOT EXISTS order_service_status ( 	
	order_id 				SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    -- payment_status, order_status
);

-- Create table Registration_User_Token
DROP TABLE IF EXISTS 	`Registration_User_Token`;
CREATE TABLE IF NOT EXISTS `Registration_User_Token` ( 	
	id 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`token`	 		CHAR(36) NOT NULL UNIQUE,
	`user_id` 		SMALLINT UNSIGNED NOT NULL,
	`expiryDate` 	DATETIME NOT NULL
);

-- Create table Reset_Password_Token
DROP TABLE IF EXISTS 	`Reset_Password_Token`;
CREATE TABLE IF NOT EXISTS `Reset_Password_Token` ( 	
	id 				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	`token`	 		CHAR(36) NOT NULL UNIQUE,
	`user_id` 		SMALLINT UNSIGNED NOT NULL,
	`expiryDate` 	DATETIME NOT NULL
);



-- password: 123456
INSERT INTO `User` 	(`username`,			`email`,						`password`,														`firstName`,		`lastName`, 	`status`, 	`role`,  		`avatarUrl`				)
VALUE				('hanh.havan@vti',		'hanhhanoi1999@gmail.com',		'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Hà'	,		'Văn Hanh',			0, 		'Manager' 	,		null				), 
					('thanhhung12@vti',		'hung122112@gmail.com',			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Thanh Hưng',		0, 		'Manager' 	,		null				), 
					('can.tuananh@vti',		'cananh.tuan12@vti.com',		'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Cấn'	,		'Tuấn Anh',			0, 		'Manager' 	,		null				), 
					('toananh123@vti',		'toananh123@vti.com',			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Anh Toàn',			0, 		'Manager' 	,		null				), 
					('manhhung123@vti',		'manhhung123@vti.com',			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Mạnh Hùng',		0, 		'Manager' 	,		null				),
					('maianhvti123',		'maianhng@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Mai Anh',			0, 		'Employee'	,		null				),
					('tuanvti12344',		'tuan1234@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Văn Tuấn',			0, 		'Employee'	,		null				),
					('ngthuy123',			'thuyhanoi@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Thị Thủy',			0, 		'Employee'	,		null				),
					('quanganhvti',			'quanganh@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Quang Anh',		0, 		'Manager' 	,		null				),
					('hoanghungvti',	    'hunghoang@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Vũ'	,		'Hoàng Hưng',		0, 		'Employee'	,		null				),
					('quocanhvti',			'quocanh12@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Quốc Anh',			0, 		'Admin'	  	,		null				),
					('vananhvti',			'vananhb1@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Vân Anh',			0, 		'Employee'	,		null				),
					('mailanvti',			'mailan123@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Thị Trinh',		0, 		'Manager' 	,		null				),
					('tuanhungvti',			'tuanhung@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Vũ'	,		'Tuấn Hưng',		0, 		'Employee'	,		null				),
					('xuanmaivti',			'xuanmai12@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Xuân Mai',			0, 		'Employee'	,		null				),
                    ('duynn03',				'duynn03@gmail.com', 			'$2a$10$W2neF9.6Agi6kAKVq8q3fec5dHW8KUA.b0VSIGdIZyUravfLpyIFi',		'Nguyễn',		'Duy',				1, 		'Employee'	,		'1613362949329.png'	);
                    
-- Add data Group
INSERT INTO `Group`(`name`, totalMember) 
VALUES
						(N'Marketing'	, 			1),
						(N'Sale'		, 			2),
						(N'Bảo vệ'		, 			3),
						(N'Nhân sự'		, 			4),
						(N'Kỹ thuật'	, 			5),
						(N'Tài chính'	, 			6),
						(N'Phó giám đốc', 			7),
						(N'Giám đốc'	, 			8),
						(N'Thư kí'		, 			9),
						(N'Bán hàng'	, 			10),
                        (N'Bóng chuyền'	, 			10),
                        (N'Bóng đá'		, 			10),
                        (N'Bóng bàn'	, 			10),
                        (N'Đơn giản chỉ là bóng', 	10);