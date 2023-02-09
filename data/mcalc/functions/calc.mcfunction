summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["mcalc"],Age:-2147483648}

execute store result score @s mcalc.x run data get entity @s Pos[0] 1000
execute store result score @s mcalc.y run data get entity @s Pos[1] 1000
execute store result score @s mcalc.z run data get entity @s Pos[2] 1000

execute at @s run tp @e[tag=mcalc,limit=1,sort=nearest] ^ ^ ^1

execute as @e[tag=mcalc,limit=1,sort=nearest] at @s store result score @s mcalc.x run data get entity @s Pos[0] 1000
execute as @e[tag=mcalc,limit=1,sort=nearest] at @s store result score @s mcalc.y run data get entity @s Pos[1] 1000
execute as @e[tag=mcalc,limit=1,sort=nearest] at @s store result score @s mcalc.z run data get entity @s Pos[2] 1000

execute store result score @s mcalc.x2 run scoreboard players get @e[tag=mcalc,limit=1,sort=nearest] mcalc.x
execute store result score @s mcalc.y2 run scoreboard players get @e[tag=mcalc,limit=1,sort=nearest] mcalc.y
execute store result score @s mcalc.z2 run scoreboard players get @e[tag=mcalc,limit=1,sort=nearest] mcalc.z

scoreboard players operation @s mcalc.mx = @s mcalc.x
scoreboard players operation @s mcalc.mx -= @s mcalc.x2
scoreboard players operation @s mcalc.my = @s mcalc.y
scoreboard players operation @s mcalc.my -= @s mcalc.y2
scoreboard players operation @s mcalc.mz = @s mcalc.z
scoreboard players operation @s mcalc.mz -= @s mcalc.z2

kill @e[tag=mcalc,limit=1,sort=nearest]