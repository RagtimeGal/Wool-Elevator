####################
# Player Tick
####################

execute if entity @s[scores={rag_we.jump=1..}] if block ~ ~-1 ~ #rag_we:elevator run tag @s add rag_we.jump
scoreboard players reset @s rag_we.jump
