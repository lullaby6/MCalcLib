execute as @e[tag=mcalc.health] store result score @s mcalc.health run data get entity @s Health
execute as @e[tag=mcalc.age] store result score @s mcalc.age run data get entity @s Age
execute as @e[tag=mcalc.tags] store result score @s mcalc.tags run data get entity @s Tags
execute as @a[tag=mcalc.xp] store result score @s mcalc.xp run xp query @s levels
execute as @e[tag=mcalc.hurt_time] store result score @s mcalc.hurt_time run data get entity @s HurtTime
execute as @e[tag=mcalc.fire] store result score @s mcalc.fire run data get entity @s Fire

tag @e[type=player,gamemode=!creative,gamemode=!spectator] add mcalc.player
tag @e[type=player,gamemode=!survival,gamemode=!adventure] remove mcalc.player
execute as @e[type=wolf] if data entity @s Owner run tag @s add mcalc.player
tag @e[type=iron_golem] add mcalc.player
tag @e[type=snow_golem] add mcalc.player

execute as @e[tag=mcalc.unfire,nbt=!{Fire:-1s}] run data merge entity @s {Fire:0}
execute as @e[tag=mcalc.unfire] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
effect give @e[tag=mcalc.unfire] fire_resistance 3 0 true

execute as @a unless score @s mcalc.player_id matches 1.. run function mcalc:player_id