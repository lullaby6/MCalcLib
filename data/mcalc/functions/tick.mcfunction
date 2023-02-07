execute as @e[tag=mcalc.health] store result score @s mcalc.health run data get entity @s Health
execute as @e[tag=mcalc.age] store result score @s mcalc.age run data get entity @s Age
execute as @e[tag=mcalc.tags] store result score @s mcalc.tags run data get entity @s Tags
execute as @a[tag=mcalc.xp] store result score @s mcalc.xp run xp query @s levels

tag @e[type=player,gamemode=!creative,gamemode=!spectator] add mcalc.player
tag @e[type=player,gamemode=!survival,gamemode=!adventure] remove mcalc.player
tag @e[type=wolf] add mcalc.player
tag @e[type=iron_golem] add mcalc.player
tag @e[type=snow_golem] add mcalc.player
tag @e[type=warden] add mcalc.player
tag @e[type=zoglin] add mcalc.player

execute as @e[tag=mcalc.unfire,nbt=!{Fire:-1s}] run data merge entity @s {Fire:0}
execute as @e[tag=mcalc.unfire] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
effect give @e[tag=mcalc.unfire] fire_resistance 3 0 true

execute as @e[type=!player,scores={mcalc.damage=1..}] run function mcalc:damage

execute as @a[tag=!mcalc.procced] run function mcalc:procced