#> asset:mob/0053.executioners/attack/
#
# Mobの攻撃時の処理（雷弄者と似た感じ）
#
# @within function asset:mob/alias/53/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    execute at @p[tag=Victim] run particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 0.1 40
    execute at @p[tag=Victim] run particle witch ~ ~ ~ 0 1 0 0 20
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6
    playsound entity.phantom.bite hostile @a ~ ~ ~ 1 0

# 何故かこうするとプレイヤーと同じ剣の降り方をする
    item replace entity @s weapon with stick{CustomModelData:20029}

# ダメージ
    data modify storage api: Argument.Damage set value 21f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# 以下自分がテレポートする処理
# 演出
    particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# マーカーをワープさせて、そこが安全地帯ならワープする
    execute at @p[tag=Victim,distance=..50] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @p[tag=Victim,distance=..50] run data modify storage lib: Argument.Bounds set value [[4d,4d],[0d,0d],[4d,4d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~

# リセット
    data remove storage lib: Argument
    kill @e[type=marker,tag=SpreadMarker]
