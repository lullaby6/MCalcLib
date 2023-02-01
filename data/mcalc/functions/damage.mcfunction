execute store result score @s mcalc.health run data get entity @s Health
scoreboard players operation @s mcalc.health -= @s mcalc.damage

execute unless score @s mcalc.health matches ..0 store result entity @s Health short 1 run scoreboard players get @s mcalc.health
execute if score @s mcalc.health matches ..0 run kill @s

scoreboard players reset @s mcalc.damage
execute store result score @s mcalc.health run data get entity @s Health

effect give @s minecraft:instant_damage 1 255 true
effect give @s minecraft:instant_health 1 255 true