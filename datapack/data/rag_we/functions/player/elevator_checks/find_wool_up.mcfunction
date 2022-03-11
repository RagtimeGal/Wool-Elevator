####################
# Finds wool above the player
####################

## If block wool
execute if block ~ ~ ~ #rag_we:elevator if block ~ ~1 ~ #rag_we:elevator_safe run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 75 normal
execute if block ~ ~ ~ #rag_we:elevator if block ~ ~1 ~ #rag_we:elevator_safe run tp @s ~ ~0.5 ~
execute if block ~ ~ ~ #rag_we:elevator if block ~ ~1 ~ #rag_we:elevator_safe run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 75 normal
## Recur unless block is endstone
execute unless block ~ ~ ~ #rag_we:elevator positioned ~ ~1 ~ run function rag_we:player/elevator_checks/find_wool_up
