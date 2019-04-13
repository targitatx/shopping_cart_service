DROP DATABASE IF EXISTS cart_inventory;
CREATE DATABASE cart_inventory;
\C cart_inventory;

CREATE TABLE inventory_items (
  sku SERIAL,
  title VARCHAR(50),
  price NUMERIC,
  image_url VARCHAR(200),
  datecreated TIMESTAMP,
  quantity INTEGER,
  category VARCHAR(50)
);

INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Fish', 58.00, 'https://s3.amazonaws.com/targitphotos/001.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Tasty Mouse', 826.00, 'https://s3.amazonaws.com/targitphotos/002.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Car', 805.00, 'https://s3.amazonaws.com/targitphotos/003.jpg', 0, 'Automotive');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Keyboard', 204.00, 'https://s3.amazonaws.com/targitphotos/004.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Rustic Chips', 959.00, 'https://s3.amazonaws.com/targitphotos/005.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Pizza', 610.00, 'https://s3.amazonaws.com/targitphotos/006.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Tuna', 639.00, 'https://s3.amazonaws.com/targitphotos/007.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Ball', 665.00, 'https://s3.amazonaws.com/targitphotos/008.jpg', 0, 'Fitness');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Refined Shirt', 980.00, 'https://s3.amazonaws.com/targitphotos/009.jpg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Generic Hat', 876.00, 'https://s3.amazonaws.com/targitphotos/010.jpeg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Computer', 185.00, 'https://s3.amazonaws.com/targitphotos/011.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Fantastic Gloves', 605.00, 'https://s3.amazonaws.com/targitphotos/012.jpg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Small Salad', 44.00, 'https://s3.amazonaws.com/targitphotos/013.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Table', 197.00, 'https://s3.amazonaws.com/targitphotos/014.jpg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Chicken', 645.00, 'https://s3.amazonaws.com/targitphotos/015.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Gorgeous Sausages', 906.00, 'https://s3.amazonaws.com/targitphotos/016.jpeg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Practical Chair', 393.00, 'https://s3.amazonaws.com/targitphotos/017.jpg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Cheese', 692.00, 'https://s3.amazonaws.com/targitphotos/018.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Unbranded Soap', 225.00, 'https://s3.amazonaws.com/targitphotos/019.jpeg', 0, 'Personal Care');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handmade Pants', 922.00, 'https://s3.amazonaws.com/targitphotos/020.jpg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Generic Towels', 870.00, 'https://s3.amazonaws.com/targitphotos/021.jpeg', 0, 'Household Essentials');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Bacon', 902.00, 'https://s3.amazonaws.com/targitphotos/022.jpeg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Shoes', 159.00, 'https://s3.amazonaws.com/targitphotos/023.jpeg', 0, 'Kids');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Fish', 942.00, 'https://s3.amazonaws.com/targitphotos/024.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Fantastic Mouse', 123.00, 'https://s3.amazonaws.com/targitphotos/025.jpg', 0, 'Pets');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handcrafted Car', 303.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/26_handcrafted_car.jpg', 0, 'Automotive');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handmade Keyboard', 409.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/27_handmade_keyboard.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Small Chips', 419.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/28_small_chips.jpeg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Pizza', 152.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/29_sleek_pizza.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Tuna', 628.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/30_sleek_tuna.webp', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Awesome Ball', 154.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/31_awesome_ball.jpg', 0, 'Clearance');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Generic Shirt', 836.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/32_generic+shirt.jpg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handcrafted Hat', 219.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/33_handcrafted_hat.jpg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Unbranded Computer', 98.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/34_unbranded_computer.jpg', 0, 'Electornics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Gloves', 176.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/35_intelligent_glove.jpeg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Unbranded Salad', 344.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/36_unbranded_salad.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Table', 206.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/37_intelligent_table.jpg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Rustic Chicken', 297.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/38_rustic_chicken.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Sausages', 988.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/39_intelligent_sausages.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Rustic Chair', 243.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/40_rustic_chair.jpeg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Tasty Cheese', 601.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/41_tasty_cheese.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Fantastic Soap', 958.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/42_fantastic_soap.jpg', 0, 'Personal Care');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Pants', 942.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/43_intelligent_pants.jpg', 0, 'Kids');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Towels', 838.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/44_licensed_towel.jpg', 0, 'Household Essentials');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Bacon', 997.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/45_ergonomic_bacon+.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Gorgeous Shoes', 887.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/46_gorgeous_shoes.jpg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Fish', 291.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/47_intelligent_fish.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Refined Mouse', 830.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/48_refined_mouse.jpeg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Car', 62.00, 'https://s3.us-east-2.amazonaws.com/targitproducts/49_ergonomic_car.jpeg', 0, 'Automotive');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Keyboard', 238.00, 'https://s3.amazonaws.com/targitphotos/051.jpeg', 0, 'Electornics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Generic Chips', 21.00, 'https://s3.amazonaws.com/targitphotos/052.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Pizza', 890.00, 'https://s3.amazonaws.com/targitphotos/053.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Tasty Tuna', 186.00, 'https://s3.amazonaws.com/targitphotos/054.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Practical Ball', 918.00, 'https://s3.amazonaws.com/targitphotos/055.jpg', 0, 'Fitness');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Refined Shirt', 337.00, 'https://s3.amazonaws.com/targitphotos/056.jpg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Hat', 67.00, 'https://s3.amazonaws.com/targitphotos/057.jpg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Computer', 693.00, 'https://s3.amazonaws.com/targitphotos/058.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handmade Gloves', 67.00, 'https://s3.amazonaws.com/targitphotos/059.jpg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Refined Salad', 785.00, 'https://s3.amazonaws.com/targitphotos/060.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Awesome Table', 831.00, 'https://s3.amazonaws.com/targitphotos/061.jpg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Chicken', 212.00, 'https://s3.amazonaws.com/targitphotos/062.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Sleek Sausages', 401.00, 'https://s3.amazonaws.com/targitphotos/063.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Chair', 913.00, 'https://s3.amazonaws.com/targitphotos/064.jpg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Cheese', 253.00, 'https://s3.amazonaws.com/targitphotos/065.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Soap', 765.00, 'https://s3.amazonaws.com/targitphotos/066.jpg', 0, 'Personal Care');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handcrafted Pants', 93.00, 'https://s3.amazonaws.com/targitphotos/067.jpg', 0, 'Kids');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Unbranded Towels', 600.00, 'https://s3.amazonaws.com/targitphotos/068.jpg', 0, 'Household Essentials');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Gorgeous Bacon', 537.00, 'https://s3.amazonaws.com/targitphotos/069.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Practical Shoes', 237.00, 'https://s3.amazonaws.com/targitphotos/070.jpg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Fish', 382.00, 'https://s3.amazonaws.com/targitphotos/071.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Mouse', 165.00, 'https://s3.amazonaws.com/targitphotos/072.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Car', 516.00, 'https://s3.amazonaws.com/targitphotos/073.jpeg', 0, 'Automotive');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Licensed Keyboard', 719.00, 'https://s3.amazonaws.com/targitphotos/074.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Awesome Chips', 743.00, 'https://s3.amazonaws.com/targitphotos/075.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Intelligent Pizza', 694.00, 'https://s3.amazonaws.com/targitphotos/075.5.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Practical Tuna', 249.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/76.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Ergonomic Ball', 559.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/77.jpg', 0, 'Fitness');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Awesome Shirt', 624.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/78.jpg', 0, 'Kids');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Refined Hat', 494.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/79.png', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Practical Computer', 865.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/80.png', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Rustic Gloves', 399.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/81.jpg', 0, 'Women');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Tasty Salad', 788.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/82.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Fantastic Table', 695.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/83.jpg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Tasty Chicken', 277.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/84.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handcrafted Sausages', 175.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/85.png', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Gorgeous Chair', 195.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/86.jpeg', 0, 'Furniture');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Small Cheese', 952.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/87.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handmade Soap', 362.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/88.jpg', 0, 'Personal Care');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Generic Pants', 676.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/89.jpeg', 0, 'Men');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Towels', 534.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/90.jpeg', 0, 'Household Essentails');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Generic Bacon', 735.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/91.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Gorgeous Shoes', 12.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/92.jpg', 0, 'Kids');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Handmade Fish', 303.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/93.jpg', 0, 'Pets');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Rustic Mouse', 6.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/94.jpg', 0, 'Pets');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Small Car', 676.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/95.jpg', 0, 'Automotive');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Incredible Keyboard', 718.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/96.jpg', 0, 'Electronics');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Rustic Chips', 574.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/97.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Refined Pizza', 20.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/98.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Fantastic Tuna', 221.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/99.jpg', 0, 'Grocery');
INSERT INTO inventory_items (title, price, image_url, quantity, category) VALUES ('Gorgeous Ball', 898.00, 'https://s3.us-east-2.amazonaws.com/cartphotos/77.jpg', 0, 'Fitness');