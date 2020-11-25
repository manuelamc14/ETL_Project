# Project Poposal - Fastfood Nutritional Database

#Project Members: Kathy Manthey, Manuela Muñoz, Nicole Muscanell

## Purpose

The purpose of this project is to extract, transform, and load into a final database information about food nutrition for several national (U.S.) fast food chains. The main question that the database could be used to answer is "What is the nutritional content or value of specific food items at fast food restaurants?". The database could further be used to compare nutritional values between the restaurants in the database. We will focus on three major fastfood restaurants: McDonalds, Subway, and Starbucks.
The final production database will be relational.


##Data Sources

* Nutrition data for McDonalds: https://www.kaggle.com/mcdonalds/nutrition-facts
* Nutrition data for Subway: https://www.kaggle.com/davinm/subway-restaurant-nutrition-data
* Nutrition data for Stabucks: https://www.kaggle.com/starbucks/starbucks-menu


## Data Cleanup & Analysis

For the transformation phase, we need to do some basic cleaning so that the files can be linked to each other, in addition to deciding what columns to include/exclude, and perform some joins. Below are some specific steps that our group plans to complete during this process.

## Steps [subject to change as project progresses]:

**** Pre SQL & Pandas Phase:****
* Create an ERD
* Decide final scheme for tables/final database
* Add categories to starbucks foods.

**** SQL & Pandas Phase:****
1. Change column names across data sets to fit the scheme.
2. Add id to each file.
3. Drop caffeine from starbucks drinks. 
4. Get rid of percents in starbucks drink file (for last 4 columns: vitamin through iron).
5. Add new column that adds together beverage item + beverage prep info together (for Starbucks drinks).
6. Join the two starbucks files together.
7. Create a junction table, that links id with restaurant name.
8. Finalize ERD (with cardinality)



