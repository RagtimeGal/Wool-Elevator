####################
# Player Second Clock
####################

## Player
execute if entity @s[type=player,predicate=rag_we:is_sneaking] if block ~ ~-1 ~ #rag_we:elevator align xyz positioned ~0.5 ~-1.5 ~0.5 run function rag_we:player/elevator_checks/find_activator
execute if entity @s[type=player,tag=rag_we.jump] align xyz positioned ~0.5 ~-1.5 ~0.5 run function rag_we:player/elevator_checks/find_activator
