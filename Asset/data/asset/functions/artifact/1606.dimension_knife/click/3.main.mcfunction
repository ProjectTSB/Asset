#> asset:artifact/1606.dimension_knife/click/3.main
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition

# ワープができるようになるバフ削除
    data modify storage api: Argument.ID set value 387
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# ワープ直後の性能を盛るバフを付与
    data modify storage api: Argument.ID set value 388
    data modify storage api: Argument.Duration set value 60
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# AttackCountをリセット
    scoreboard players reset @s 18M.AttackCount

# ターゲットの背後にワープ
    execute positioned as @e[type=#lib:living_without_player,tag=Target,distance=..20,limit=1] rotated ~ 0 positioned ^ ^1.8 ^1.6 run tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Target,distance=..20,limit=1] feet

# 演出
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 1.3
    execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1 1.3

# Object召喚
    data modify storage api: Argument.ID set value 1186
    execute anchored eyes positioned ^ ^ ^3 facing ^ ^ ^-1 run function api:object/summon

    data modify storage api: Argument.ID set value 1186
    execute at @s anchored eyes positioned ^ ^ ^-1.5 run function api:object/summon
