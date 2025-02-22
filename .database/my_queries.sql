-- CREATE TABLE brand ( 
--     brand_id INTEGER PRIMARY KEY AUTOINCREMENT, 
--     brand_name TEXT NOT NULL     
-- );

-- INSERT INTO brand (brand_name) 
-- VALUES 
--     ('Nike'); 
    

-- CREATE TABLE model ( 
--     model_id INTEGER PRIMARY KEY AUTOINCREMENT,
--     model_name TEXT NOT NULL, 
--     brand_id INTEGER NOT NULL, 
--     description TEXT NOT NULL,
--     FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
-- );

-- INSERT INTO model (model_id, model_name, brand_id, description) 
-- VALUES 
--     (
--         1001,
--         'Air Max 1', 
--         1, 
--         'The revolutionary Air technology first appeared in this shoe'
--     );

-- INSERT INTO model (model_name, brand_id, description) 
-- VALUES 
--     (
--         'Air Jordan 1', 
--         1, 
--         'The shoe that started it all for the Jordan brand.'
--     ), 
--     (
--         'Air Force 1', 
--         1, 
--         'Known for its comfort and iconic design.'
--     ), 
--     (
--         'Roshe Run', 
--         1, 
--         'A minimalist design that is perfect for casual wear.'
--     ), 
--     (
--         'Dunk', 
--         1, 
--         'A classic that has seen numerous colorways and collaborations.'
--     ), 
--     (
--         'Blazer', 
--         1, 
--         'One of Nikes earliest basketball shoes, now a lifestyle favorite.'
--     ), 
--     (
--         'Cortez', 
--         1, 
--         'A timeless running shoe that became a cultural icon.'
--     );



-- CREATE TABLE shoe (
--     shoe_id INTEGER PRIMARY KEY AUTOINCREMENT, 
--     brand_id INTEGER NOT NULL, 
--     model_id INTEGER NOT NULL,
--     image_path TEXT NOT NULL,
--     image_description TEXT NOT NULL,  
--     price REAL NOT NULL, 
--     size_min INTEGER NOT NULL, 
--     size_max INTEGER NOT NULL,
--     FOREIGN KEY (brand_id) REFERENCES model (brand_id),
--     FOREIGN KEY (model_id) REFERENCES model (model_id) 
-- );

-- INSERT INTO shoe (brand_id, model_id, image_path, image_description, price, size_min, size_max) 
-- VALUES 
--     (
--         4001,
--         1,
--         1001, 
--         '../static/images/Air_Max_1.jpg',
--         'Photograph of Air Max 1', 
--         150.00, 
--         7, 
--         16 
--     )
--     (
--         1, 
--         1002, 
--         '../static/images/Air_Jordan_1.png',
--         'Photograph of Air Jordan 1', 
--         160.00, 
--         7, 
--         16 
--     ), 
--     (
--         1, 
--         1003, 
--         '../static/images/Air_Force_1.png',
--         'Photograph of Air Force_1', 
--         120.00, 
--         7, 
--         16 
--     ), 
--     (
--         1, 
--         1004, 
--         '../static/images/Roshe_G.png',
--         'Photograph of Roshe Run', 
--         75.00, 
--         7, 
--         16 
--     ), 
--     (
--         1, 
--         1005, 
--         '../static/images/Dunk.png',
--         'Photograph of Dunk', 
--         100.00, 
--         7, 
--         16 
--     ), 
--     (
--         1, 
--         1006, 
--         '../static/images/Blazer.png',
--         'Photograph of Blazer', 
--         110.00, 
--         7, 
--         16 
--     ), 
--     (
--         1, 
--         1007, 
--         '../static/images/Cortez.png',
--         'Photograph of Cortez', 
--         85.00, 
--         7, 
--         16 
--     );



-- ****** My queries ***************
-- DROP TABLE shoe;
-- DROP TABLE model;

--  SELECT * FROM shoe
--   WHERE shoe_id=6;



--  SELECT * FROM shoe
--  JOIN model ON 