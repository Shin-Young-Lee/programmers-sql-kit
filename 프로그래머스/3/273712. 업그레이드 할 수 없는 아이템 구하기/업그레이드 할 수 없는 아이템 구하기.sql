SELECT i.ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO i
LEFT JOIN ITEM_TREE t 
ON i.ITEM_ID = PARENT_ITEM_ID
WHERE PARENT_ITEM_ID IS NULL
ORDER BY ITEM_ID DESC;