####################
# Finds wool above the player
####################

## If block wool
execute if block ~ ~ ~ #rag_we:elevator if block ~ ~1 ~ #rag_we:air run tp @s ~ ~0.5 ~
## Recur unless block is endstone
execute unless block ~ ~ ~ #rag_we:elevator positioned ~ ~1 ~ run function rag_we:player/elevator_checks/find_wool_up
