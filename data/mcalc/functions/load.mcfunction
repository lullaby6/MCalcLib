scoreboard objectives add mcalc.mx dummy
scoreboard objectives add mcalc.my dummy
scoreboard objectives add mcalc.mz dummy

scoreboard objectives add mcalc.random dummy
scoreboard objectives add mcalc.max dummy
scoreboard objectives add mcalc.min dummy

scoreboard objectives add mcalc.const dummy
scoreboard players set 1 mcalc.const 1
scoreboard players set 2 mcalc.const 2
scoreboard players set 3 mcalc.const 3
scoreboard players set 4 mcalc.const 4
scoreboard players set 5 mcalc.const 5
scoreboard players set 6 mcalc.const 6
scoreboard players set 7 mcalc.const 7
scoreboard players set 8 mcalc.const 8
scoreboard players set 9 mcalc.const 9
scoreboard players set 10 mcalc.const 10
scoreboard players set 12 mcalc.const 12
scoreboard players set 15 mcalc.const 15
scoreboard players set 16 mcalc.const 16
scoreboard players set 20 mcalc.const 20
scoreboard players set 24 mcalc.const 24
scoreboard players set 32 mcalc.const 32
scoreboard players set 48 mcalc.const 48
scoreboard players set 50 mcalc.const 50
scoreboard players set 64 mcalc.const 64
scoreboard players set 75 mcalc.const 75
scoreboard players set 100 mcalc.const 100
scoreboard players set 125 mcalc.const 125
scoreboard players set 128 mcalc.const 128
scoreboard players set 150 mcalc.const 150
scoreboard players set 175 mcalc.const 175
scoreboard players set 200 mcalc.const 200
scoreboard players set 250 mcalc.const 250
scoreboard players set 256 mcalc.const 256
scoreboard players set 500 mcalc.const 500
scoreboard players set 512 mcalc.const 512
scoreboard players set 750 mcalc.const 750
scoreboard players set 1000 mcalc.const 1000
scoreboard players set 1024 mcalc.const 1024

scoreboard objectives add mcalc.damage dummy
scoreboard objectives add mcalc.damaged dummy

scoreboard objectives add mcalc dummy
scoreboard players set min mcalc 1

scoreboard objectives add mcalc.health dummy
scoreboard objectives add mcalc.age dummy
scoreboard objectives add mcalc.xp dummy
scoreboard objectives add mcalc.hunger food
scoreboard objectives add mcalc.tags dummy

scoreboard objectives add mcalc.player_id dummy
execute unless score .id mcalc.player_id matches 0.. run scoreboard players set .id mcalc.player_id 0