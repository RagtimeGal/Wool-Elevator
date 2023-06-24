####################
# Finds if endstone is below the player
####################

## If block endstone
execute if block ~ ~ ~ #rag_we:elevator_activator if block ~ ~1 ~ #rag_we:elevator run execute if entity @s[type=player,predicate=rag_we:is_sneaking] run execute at @s align xyz positioned ~0.5 ~-1.5 ~0.5 run function rag_we:player/elevator_checks/find_wool_down
execute if block ~ ~ ~ #rag_we:elevator_activator if block ~ ~1 ~ #rag_we:elevator run execute if entity @s[type=player,predicate=!rag_we:is_sneaking] run execute at @s align xyz positioned ~0.5 ~1.5 ~0.5 run function rag_we:player/elevator_checks/find_wool_up
scoreboard players reset @s rag_we.jump
## Recur unless block is endstone
execute unless block ~ ~ ~ #rag_we:elevator_activator positioned ~ ~-1 ~ run function rag_we:player/elevator_checks/find_activator
