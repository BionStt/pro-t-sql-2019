USE Menu;
GO

WITH cte_meal AS
(
	SELECT meal.MealTypeName, rec.RecipeName, rec.ServingQuantity, ing.IngredientName
	FROM dbo.Recipe rec
		INNER JOIN dbo.MealType meal
		ON rec.MealTypeID = meal.MealTypeID
		INNER JOIN dbo.RecipeIngredient recing
		ON rec.RecipeID = recing.RecipeID
		INNER JOIN dbo.Ingredient ing
		ON recing.IngredientID = ing.IngredientID 
)

SELECT meal.MealTypeName, meal.RecipeName, meal.ServingQuantity, meal.IngredientName
FROM cte_meal meal