####################
# Finds if endstone is below the player
####################

## Recur unless block is endstone
execute unless block ~ ~ ~ #rag_we:elevator_activator positioned ~ ~-1 ~ run function rag_we:player/elevator_checks/find_activator
## Playerhead whitelist
execute if block ~ ~ ~ #rag_we:elevator_activator if block ~ ~1 ~ #rag_we:elevator unless block ~ ~-1 ~ #rag_we:player_heads run scoreboard players set #temp rag_we.jump 0
execute if block ~ ~ ~ #rag_we:elevator_activator if block ~ ~1 ~ #rag_we:elevator if block ~ ~-1 ~ #rag_we:player_heads positioned ~ ~-1 ~ run function rag_we:player/elevator_checks/whitelist
## If block endstone
execute if score #temp rag_we.jump matches 0 if block ~ ~ ~ #rag_we:elevator_activator if block ~ ~1 ~ #rag_we:elevator run execute if entity @s[type=player,predicate=rag_we:is_sneaking] run execute at @s align xyz positioned ~0.5 ~-1.5 ~0.5 run function rag_we:player/elevator_checks/find_wool_down with storage rag_we:storage root
execute if score #temp rag_we.jump matches 0 if block ~ ~ ~ #rag_we:elevator_activator if block ~ ~1 ~ #rag_we:elevator run execute if entity @s[type=player,predicate=!rag_we:is_sneaking] run execute at @s align xyz positioned ~0.5 ~1.5 ~0.5 run function rag_we:player/elevator_checks/find_wool_up with storage rag_we:storage root
scoreboard players reset @s rag_we.jump
