# Fast-food Nutritional Database

Project Members: Kathy Manthey, Manuela Muñoz, Nicole Muscanell

### Purpose:

The purpose of this project was to extract, transform, and load into a final relational database information about food nutrition for several national (U.S.) fast food chains. The main question that the database could be used to answer is "What is the nutritional content or value of specific food items at fast food restaurants?". The database could further be used to compare nutritional values between the restaurants in the database. We will focus on three major fast-food restaurants: McDonalds, Subway, and Starbucks. The final production database is relational.

### 1. Extraction Process

We downloaded three csv files from kaggle:

Nutrition data for McDonalds: https://www.kaggle.com/mcdonalds/nutrition-facts
Nutrition data for Subway: https://www.kaggle.com/davinm/subway-restaurant-nutrition-data
Nutrition data for Starbucks: https://www.kaggle.com/starbucks/starbucks-menu


### 2. Transformation Process 

For the transformation phase, we needed to do some basic cleaning so that the files can be
linked to each other, in addition to deciding what columns to include/exclude, and perform
some joins. Below are the specific steps that our group followed during this process.

Pandas Phase:

- Read the csv file into the jupyter notebook as dataframes.

- Because the type of the database is relational and we wanted to avoid reducing the database to the table with fewest columns, the McDonald's table was used as the general scheme for the  database; as it was  the table with more information columns.

- Columns for restaurant, category, and item ids, were added to the schema, which would later be used to link tables within the database.

- With the intent to concat all of the menu items into one dataframe, the column names were standardized and ordered for each of the dataframes.

- The Starbucks table included duplicate item names. The duplicate values were identified and to make them unique, some column joins were made adding more details to the item names.

- McDonald's table listed serving sizes in ounces and grams within the same column.  We chose to limit the serving size to ounces and strip out the grams since the database also includes beverages, typically measured in ounces. 

- The serving size columns had a combination of data types (integer and string)  within the column which required to use the strip function to remove the string values as well as standardizing numeric decimal values.

- Some serving sizes contained unique values such as 1 carton and ml,  which required identification by index and conversion to ounces. The conversation was made through the apply method, which includes as one of the parameters a lambda function.

- Caffeine column was dropped since it only applies to beverages and only one table had this information.

- Once standardized, we combined all of the data into a single dataframe using the concat function. 

*Normalization Data Phase: *

To make the database more flexible and the information loading process faster, we split the main dataframe into four data frames that will be loaded to the database as tables: restaurants, categories, menu items and nutrition following the steps below:

- In order to create a unique ID system for the restaurants, categories and menu items. An ID was assigned to each of the elements of these groups. 

- To generate the IDs, we created a dictionary through the dictionary comprehension method that assigned a number to each unique item in the column based on a range from 0 to the total number of the items . 

- The restaurants, categories and menu items dictionary were saved as data frames and exported as csv files. 

- We dropped the varchar columns from the main data frame and exported the final clean_combined_df to a csv file.

### 3. Loading Process

SQLite Phase:

- An ERD was created for the SQLite schema followed by DB browser setup.

- The database was created and the csv files were imported using the csv files.

Pandas Phase:

- A "loading file" was created in jupyter notebook to create the engine, automap the classes, create the session, and inspect the data.

- Queries were created to insure the database is working correctly.

- First, items were listed, then final queries were created to fully test the ability to query and display the data effectively.



