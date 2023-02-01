summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["mcalc"],Age:-2147483648}

execute store result score @s mcalc.mx run data get entity @s Pos[0] 1000
execute store result score @s mcalc.my run data get entity @s Pos[1] 1000
execute store result score @s mcalc.mz run data get entity @s Pos[2] 1000

tp @e[tag=mcalc] ^ ^ ^1

execute as @e[tag=mcalc,limit=1,sort=nearest] at @s store result score @s mcalc.mx run data get entity @s Pos[0] 1000
execute as @e[tag=mcalc,limit=1,sort=nearest] at @s store result score @s mcalc.my run data get entity @s Pos[1] 1000
execute as @e[tag=mcalc,limit=1,sort=nearest] at @s store result score @s mcalc.mz run data get entity @s Pos[2] 1000

scoreboard players operation @s mcalc.mx -= @e[tag=mcalc,limit=1,sort=nearest] mcalc.mx
scoreboard players operation @s mcalc.my -= @e[tag=mcalc,limit=1,sort=nearest] mcalc.my
scoreboard players operation @s mcalc.mz -= @e[tag=mcalc,limit=1,sort=nearest] mcalc.mz

kill @e[tag=mcalc,limit=1,sort=nearest]