<div align="center">

# MCalc

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

---

## Usage

### Get a random number between a minimum and a maximum:
(including minimum and maximum)

```
scoreboard players set <entity> mcalc.min 1
scoreboard players set <entity> mcalc.max 10
execute as <entity> run function mcalc:random
```

the random number will be stored in "mcalc.random" score

```
tellraw @a {"score":{"name":"<enttiy>","objective":"mcalc.random"}}
```

### Motion in direction
throw_fireball.mcfunction:
```
function mcalc:calc

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
execute as <entity> at @s run function mcalc:kill
```

### Reset XP

```
execute as <player> run function mcalc:reset_xp
```

### Unfire Entity

```
summon zombie ~ ~ ~ {Tags:["mcalc.unfire"]}
```

### New Entities Tags

```
kill @e[type=#undead]
```

---