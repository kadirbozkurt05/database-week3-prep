CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

CREATE TABLE Recipes (
    RecipeID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    CategoryID INT,
    Instructions TEXT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(255) NOT NULL
);

CREATE TABLE RecipeIngredients (
    RecipeID INT,
    IngredientID INT,
    Quantity DECIMAL(10, 2),
    Unit VARCHAR(50),
    PRIMARY KEY (RecipeID, IngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);

/*
-This database already in 2NF and 3NF because;
There is only one candidate key for each table and there is no partial dependencies.

-There is no need to change anything for normalization.

-If there will be thousands of recipes in this table, I might face those kind of challenges;
 -Performance issues
 -Data Integration Issues
 -Storage issues
 -Query issues etc.

*/