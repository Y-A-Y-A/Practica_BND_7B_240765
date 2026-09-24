
CREATE USER IF NOT EXISTS 'marco.ramirez'@'%'
IDENTIFIED BY 'qwerty123';

CREATE USER IF NOT EXISTS 'dara.gomez'@'%'
IDENTIFIED BY '240765';

CREATE USER IF NOT EXISTS 'josu.oloarte'@'%'
IDENTIFIED BY '240272';

CREATE USER IF NOT EXISTS 'jennifer.canales'@'%'
IDENTIFIED BY '240556';


GRANT ALL PRIVILEGES
ON *.*
TO 'dara.gomez'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE
ON db_test_7b.*
TO 'josu.oloarte'@'%';

SET GLOBAL activate_all_roles_on_login = ON;

CREATE ROLE IF NOT EXISTS 'superadmin';
CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'user_not_registered';

-- Superadmin
GRANT ALL PRIVILEGES
ON *.*
TO 'superadmin';

-- ADMIN
GRANT ALL PRIVILEGES
ON db_test_7b.*
TO 'admin';

-- SUPPORT
GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_users
TO 'support';

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_products
TO 'support';

-- SELLER
GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_users
TO 'seller';

GRANT SELECT, INSERT, UPDATE, DELETE
ON db_test_7b.tb_products
TO 'seller';

GRANT 'superadmin'
TO 'dara.gomez'@'%';

GRANT 'admin'
TO 'marco.ramirez'@'%';

GRANT 'support'
TO 'josu.oloarte'@'%';

GRANT 'seller'
TO 'jennifer.canales'@'%';

SET DEFAULT ROLE 'admin'
TO 'marco.ramirez'@'%';

SET DEFAULT ROLE 'support'
TO 'josu.oloarte'@'%';


FLUSH PRIVILEGES;
