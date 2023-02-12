<div align="center">

# MCalcLib

Library to help you!

</div>

---

## Feactures
- Choice a random number between two numbers (scoreboard)
- Motion in direction
- Despawn an entity (without dead animation)
- Reset XP Player (levels and points)
- Make unfire entities with a tag
- More entities tags: #animals, #breedable, #tameable and #undead
- Get player head
- A lot of predicates, like: "has/passenger", "is/riding", "in/dimension/the_end", "is/sneaking"
- Player unique ID score

---

## Usage

### Get a random number between a minimum and a maximum:
(including minimum and maximum)

```
scoreboard players set <entity> mcalc.min 1
scoreboard players set <entity> mcalc.max 10
execute as <entity> run function mcalc:calc/random
```

the random number will be stored in "mcalc.random" score

```
tellraw @a {"score":{"name":"<entity>","objective":"mcalc.random"}}
```

### Motion in direction
throw_fireball.mcfunction:
```
function mcalc:calc/motion

summon minecraft:fireball ^ ^1.5 ^.5 {Tags:["test.fireball"]}

data modify entity @e[tag=test.fireball,limit=1,sort=nearest] Owner set from entity @s UUID

execute store result entity @e[tag=test.fireball,limit=1,sort=nearest] power[0] double -0.00025 run scoreboard players get @s mcalc.mx
execute store result entity @e[tag=test.fireball,limit=1,sort=nearest] power[1] double -0.00025 run scoreboard players get @s mcalc.my
execute store result entity @e[tag=test.fireball,limit=1,sort=nearest] power[2] double -0.00025 run scoreboard players get @s mcalc.mz

tag @e[tag=test.fireball,limit=1,sort=nearest] remove test.fireball
```

```
execute as <entity> at @s run function <datapack>:throw_fireball
```

### Despawn entity

```
execute as <entity> at @s run function mcalc:entity/despawn
```

### Reset XP

```
execute as <player> run function mcalc:player/reset_xp
```

### Unfire entity

```
summon zombie ~ ~ ~ {Tags:["mcalc.unfire"]}
```

### New entities Tags
- animal
- boss
- breedable
- hostile
- passive
- rideable
- tameable
- undead

Example:
```
kill @e[type=#mcalc:undead]
```

### Clear chat

For specific player:
```
execute as <player> run function mcalc:player/clear_chat
```

For all players
```
function mcalc:global/clear_chat
```

### Get player head
```
execute at @s as <player> run loot spawn ~ ~ ~ loot mcalc:player_head
```

### All new predicates
- has/passenger
- has/effect/<effect_name> (example effects name: "regeneration", "fire_resistance", "glowing)
- in/biome/<biome_name> (example biomes name: "forest", "badlands", "jungle)
- in/dimension/<dimension_name> (example dimensions name: "overworld", "the_end", "the_nether")
- is/baby
- is/on_fire
- is/riding
- is/sneaking
- is/sprinting
- is/swimming
- random/<random_chance> (example: "0_1" = 10% of chance, "0.5" = 50% of chance, "0.75" = 75% of chance)

### Player unique ID score
```
scoreboard players get @s mcalc.player_id
```

---