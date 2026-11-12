import fs from 'node:fs';
import { parseSql } from '../Practica3/er-explorer/sql-parser.js';

const sqlPath = '../Practica3/Backups/db_test_7b (6).sql';
const sql = fs.readFileSync(new URL(sqlPath, import.meta.url), 'utf8');
const parsed = parseSql(sql);
const tables = parsed.tables.map(t => ({...t, rowCount: t.rowCount ?? 0}));
const triggers = [...sql.matchAll(/TRIGGER\s+`([^`]+)`\s+(BEFORE|AFTER)\s+(INSERT|UPDATE|DELETE)\s+ON\s+`([^`]+)`\s+FOR EACH ROW\s+BEGIN([\s\S]*?)END\s*\*\/;;/gi)].map(m => ({name:m[1], timing:m[2], event:m[3], table:m[4], body:m[5].trim()}));
const viewNames = [...new Set([...sql.matchAll(/CREATE\s+(?:ALGORITHM=\w+\s+)?VIEW\s+`([^`]+)`/gi)].map(m=>m[1]))];
const views = viewNames.map(name=>{const re=new RegExp('VIEW\\s+`'+name+'`\\s+AS\\s+([\\s\\S]*?)\\s+\\*\\/;','gi');let match,last;while((match=re.exec(sql)))last=match[1];const definition=last||'';const aliases=[...definition.matchAll(/\bAS\s+`([^`]+)`/gi)].map(x=>x[1]);const refs=[...tables.map(t=>t.name).filter(n=>definition.includes('`'+n+'`')), ...(definition.includes('`role_edges`')?['mysql.role_edges']:[])];return{name,columns:aliases,tables:[...new Set(refs)],definition:definition.trim()}});
const data = {database:'db_test_7b', source:'db_test_7b (6).sql', tables, edges:parsed.edges, triggers, views, counts:{columns:tables.reduce((n,t)=>n+t.columns.length,0), rows:tables.reduce((n,t)=>n+t.rowCount,0), primary:tables.filter(t=>t.keys.some(k=>k.type==='PRIMARY')).length, foreign:parsed.edges.length}};
const descriptions = {
tb_buyer_orders:'Pedidos colocados por usuarios que actúan como compradores/vendedores según seller_ID.', tb_carts:'Carritos asociados a una cuenta de usuario.', tb_logs:'Registro de operaciones descritas en la aplicación.', tb_products:'Catálogo de productos, precios y existencias.', tb_users:'Cuentas de usuario y sus datos de acceso.', tbc_categories:'Categorías del catálogo, con posible jerarquía.', tbc_payment_methods:'Tipos de método de pago disponibles.', tbd_carts_items:'Productos y cantidades asociados a carritos.', tbd_order_items:'Detalle de productos incluidos en pedidos.', tbd_products_categories:'Asociación entre productos y categorías.', tbd_produtcs_users_providers:'Asociación de productos con usuarios proveedores y tipo de propiedad (nombre original conservado).', tbd_user_payment_methods:'Métodos de pago vinculados a usuarios y referencias del proveedor.', tbd_users_wishlist_products:'Productos guardados por usuarios en una lista de deseos.'
};
fs.writeFileSync(new URL('./data.json', import.meta.url), JSON.stringify({data,descriptions}, null, 2));
const html = fs.readFileSync(new URL('./index.html', import.meta.url), 'utf8');
fs.writeFileSync(new URL('./Diccionario_Datos_Extendido.html', import.meta.url), html.replace('__PAYLOAD__', JSON.stringify({data,descriptions}).replace(/</g, '\\u003c')));
