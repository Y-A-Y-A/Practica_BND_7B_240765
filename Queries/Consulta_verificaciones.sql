USE db_test_7b;

/*1. Cuantas tablas existen en la base de datos db_test_7b?*/
SHOW TABLES;
/*2. Cuantos triggers existen en la base de datos db_test_7b?*/
SHOW TRIGGERS FROM db_test_7b;

/*3. Cuantos registros existen en la tabla users?*/
SELECT COUNT(*) AS total_registros FROM db_users;

/*4. Cuantos registros existen en la tabla bitacora?*/
SELECT COUNT(*) AS total_registros FROM tb_logs;

/*5. Consultar todas las operaciones realizadas en la base de datos*/
SELECT * FROM tb_logs;

/*6. Verificar que los usuarios remotoss hayan sido creados*/
SELECT user, host from mysql.user where host='%' AND account_locked = 'N';

/*7. Verificar los roles que fueron creados*/
SELECT user, host from mysql.user where host='%' AND account_locked = 'Y';

/* 8. Verificar que usuarios tienen que roles */
SELECT TO_USER AS usuario, TO_HOST AS host, FROM_USER AS rol, FROM_HOST AS rol_host
FROM mysql.role_edges ORDER BY TO_USER, FROM_USER;

/*9. verificar el total de los procedimientos almacenados que esten en la base de datos db_test_7b*/
SHOW PROCEDURE STATUS WHERE Db = 'db_test_7b';

/*10.verificacion de productos*/
/*contabilizar los productos*/
SELECT COUNT(*) FROM tb_products;

/*11.Visualizat la tabla de productos*/
SELECT * FROM tb_products; 

describe tb_products;
describe tb_logs;
describe tb_users;

SELECT * FROM vw_trazabilidad_productos LIMIT 10;




CREATE OR REPLACE
ALGORITHM = UNDEFINED
DEFINER = `root`@`localhost`
SQL SECURITY DEFINER
VIEW `db_test_7b`.`vw_trazabilidad_productos` AS

SELECT
    p.ID AS id,
    p.SKU AS sku,
    p.name AS name,
    p.description AS description,
    p.current_price AS current_price,
    p.current_stock AS current_stock,
    p.status AS status,

    b.db_user AS user_operation,

    COALESCE(
        GROUP_CONCAT(
            DISTINCT re.FROM_USER
            ORDER BY re.FROM_USER ASC
            SEPARATOR ', '
        ),
        'Sin rol'
    ) AS roles,

    b.table_operation AS operation,
    b.operation_description AS operation_description,
    b.operation_date AS operation_date,
    b.operation_status AS operation_status

FROM
    db_test_7b.tb_products p

INNER JOIN
    db_test_7b.tb_logs b
    ON b.table_name = 'tb_products'
    AND b.operation_description LIKE CONCAT('%SKU: ', p.SKU, '%')

LEFT JOIN
    mysql.role_edges re
    ON re.TO_USER = SUBSTRING_INDEX(b.db_user, '@', 1)

GROUP BY
    p.ID,
    p.SKU,
    p.name,
    p.description,
    p.current_price,
    p.current_stock,
    p.status,
    b.db_user,
    b.table_operation,
    b.operation_description,
    b.operation_date,
    b.operation_status;
    
    SELECT * FROM vw_trazabilidad_users LIMIT 10;
    
    CREATE OR REPLACE
ALGORITHM = UNDEFINED
DEFINER = `root`@`localhost`
SQL SECURITY DEFINER
VIEW `db_test_7b`.`vw_trazabilidad_users` AS

SELECT
    u.ID AS id,
    u.email AS email,
    u.nick AS nick,
    u.creation_date AS creation_date,
    u.last_update AS last_update,
    u.last_login AS last_login,
    u.status AS status,

    l.db_user AS performed_by,

    COALESCE(
        GROUP_CONCAT(
            DISTINCT re.FROM_USER
            ORDER BY re.FROM_USER ASC
            SEPARATOR ', '
        ),
        'Sin rol'
    ) AS roles,

    l.table_operation AS operation,
    l.operation_description AS operation_description,
    l.operation_date AS operation_date,
    l.operation_status AS operation_status

FROM
    db_test_7b.tb_users u

LEFT JOIN
    db_test_7b.tb_logs l
    ON l.table_name = 'tb_users'
    AND l.db_user = u.email

LEFT JOIN
    mysql.role_edges re
    ON re.TO_USER = SUBSTRING_INDEX(l.db_user, '@', 1)

GROUP BY
    u.ID,
    u.email,
    u.nick,
    u.creation_date,
    u.last_update,
    u.last_login,
    u.status,
    l.db_user,
    l.table_operation,
    l.operation_description,
    l.operation_date,
    l.operation_status;



    
/*10 Consulta para verificar que usuario de la base de datos */
-- inserto a que usuario de la plataforma ecommerce
SELECT 
    u.nick,
    u.email,
    b.db_user AS inserted_by,
    GROUP_CONCAT(
        DISTINCT re.FROM_USER 
        ORDER BY re.FROM_USER 
        SEPARATOR ', '
    ) AS roles,
    b.table_description,
    b.operation_date
FROM db_users u
JOIN tb_logs b
ON b.table_description LIKE CONCAT('%', u.nick, '%')
   AND b.table_description LIKE CONCAT('%', u.email, '%')

LEFT JOIN mysql.role_edges re
    ON re.TO_USER = SUBSTRING_INDEX(b.db_user, '@', 1)

WHERE b.table_operation = 'Create'
  AND b.table_name = 'tb_users'

GROUP BY
    u.nick,
    u.email,
    b.db_user,
    b.table_description,
    b.operation_date
    ORDER BY b.operation_date asc;
 /*Verificaion de productos
   Contabilizar los productos*/
 SELECT COUNT(*) FROM tb_products;
 /*Visualizar los productos*/
SELECT * FROM tb_products;
/*Consulta sobre la trazabilidad de los productos*/
SELECT
  p.id,
  p.name,
  p.description,
  b.db_user AS inserted_by,

  COALESCE(
    GROUP_CONCAT(
      DISTINCT re.FROM_USER
      ORDER BY re.FROM_USER
      SEPARATOR ', '
    ),
    'Sin rol'
  ) AS roles,
  b.table_description, 
  b.operation_date
FROM tb_products p
JOIN tb_logs b ON b.table_description LIKE CONCAT('%ID=', p.id, ',%')
LEFT JOIN mysql.role_edges re ON re.TO_USER = SUBSTRING_INDEX(b.db_user, '@', 1)
WHERE b.table_operation = 'Create'
  AND b.table_name = 'tb_products'
GROUP BY
  p.id,
    p.name,
    p.description,
    b.db_user,
    b.table_description,
    b.operation_date
ORDER BY b.operation_date ASC;


