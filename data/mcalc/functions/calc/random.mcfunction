summon marker ~ ~ ~ {Tags:["mcalc.random_uuid"]}

scoreboard players operation @s mcalc.max += 1 mcalc.const
scoreboard players operation @s mcalc.max -= @s mcalc.min

execute store result score @s mcalc.random run data get entity @e[tag=mcalc.random_uuid,limit=1,sort=nearest] UUID[0] 1

scoreboard players operation @s mcalc.random %= @s mcalc.max
scoreboard players operation @s mcalc.random += @s mcalc.min

kill @e[tag=mcalc.random_uuid,limit=1,sort=nearest]