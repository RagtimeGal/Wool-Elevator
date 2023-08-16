####################
# Compares all player head UUIDs to player using elevator
####################

## Store head UUID into storage and compare to player UUID
scoreboard players set #temp rag_we.jump 1
data modify storage rag_we:storage root.UUID set from entity @s UUID
data modify storage rag_we:storage root.whitelist set from block ~ ~ ~ SkullOwner.Id
execute store result score #temp rag_we.jump run data modify storage rag_we:storage root.whitelist set from storage rag_we:storage root.UUID
## Recur if block below is also playerhead
execute if score #temp rag_we.jump matches 1 if block ~ ~-1 ~ #rag_we:player_heads positioned ~ ~-1 ~ run function rag_we:player/elevator_checks/whitelist
