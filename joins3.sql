--a character can use any item for which the power level is equal or greater than the character`s experience divided by 100
--a list of all items that they can use

SELECT characters.name, characters.experience / 100 AS percantage_experience, items.name AS items_name, items.power
FROM fanatsy.characters
JOIN fanatsy.items
ON characters.experience / 100 >= items.power
ORDER BY characters.name, items.power
