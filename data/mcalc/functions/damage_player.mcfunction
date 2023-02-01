summon arrow ~ ~3 ~ {Tags:["mcalc.damage_arrow"],Silent:1b,Invulnerable:1b,damage:0}


scoreboard players set .x mcalc.damage 3
scoreboard players operation @s mcalc.damage *= .x mcalc.damage

execute store result entity @e[tag=mcalc.damage_arrow,limit=1,sort=nearest] damage short 1 run scoreboard players get @s mcalc.damage

scoreboard players reset @s mcalc.damage