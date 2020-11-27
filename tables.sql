------------------------------------------------------------------------ 
--Table Creation (SQLite)
------------------------------------------------------------------------ 

CREATE TABLE "categories" (
	"category_name"	TEXT,
	"id"	INTEGER,
	PRIMARY KEY("id")
);

CREATE TABLE "menu_items" (
	"item_name"	TEXT,
	"id"	INTEGER,
	PRIMARY KEY("item_name")
);

CREATE TABLE "restaurants" (
	"id"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY("id")
);

CREATE TABLE "nutrition" (
	"restaurant_id"	INTEGER,
	"category_id"	INTEGER,
	"item_id"	INTEGER UNIQUE,
	"serving_size_oz"	INTEGER,
	"calories"	INTEGER,
	"calories_from_fat"	INTEGER,
	"total_fat_g"	INTEGER,
	"total_fat_%_dv"	INTEGER,
	"saturated_fat_g"	INTEGER,
	"saturated_fat_%_dv"	INTEGER,
	"trans_fat_g"	INTEGER,
	"cholesterol_mg"	INTEGER,
	"cholesterol_%_dv"	INTEGER,
	"sodium_mg"	INTEGER,
	"sodium_%_dv"	INTEGER,
	"carbohydrates_g"	INTEGER,
	"carbohydrates_%_dv"	INTEGER,
	"dietary_fiber_g"	INTEGER,
	"dietary_fiber_% _dv"	INTEGER,
	"sugars_g"	INTEGER,
	"protein_g"	INTEGER,
	"vitamin_a_%_dv"	INTEGER,
	"vitamin_c_%_dv"	INTEGER,
	"calcium_%_dv"	INTEGER,
	"iron_%_dv"	INTEGER,
	PRIMARY KEY("item_id"),
	FOREIGN KEY("category_id") REFERENCES "categories"("id"),
	FOREIGN KEY("restaurant_id") REFERENCES "restaurants"("id")
);