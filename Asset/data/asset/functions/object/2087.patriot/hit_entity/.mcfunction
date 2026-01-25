#> asset:object/2087.patriot/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2087/hit_entity

# 割合ダメージ
    execute as @e[type=#lib:living_without_player,tag=Enemy.Boss,distance=..8,sort=nearest,limit=1] run function api:mob/get_max_health
    execute store result storage api: Argument.Damage float 0.03 run data get storage api: Return.MaxHealth 1
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7] run function api:damage/
    function api:damage/reset

# sound
    playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..128] ~ ~ ~ 1.0 0.76 1
    playsound minecraft:entity.firework_rocket.large_blast_far master @a[distance=..128] ~ ~ ~ 1.0 0.61 1

# particle
    particle minecraft:large_smoke ~ ~ ~ 2 1 2 0.1 200 force
    particle minecraft:flame ~ ~ ~ 1.5 0.8 1.5 0.3 200 force
    particle minecraft:lava ~ ~-1 ~ 2 0 2 1 24 force

# super呼び出し
    function asset:object/super.method
