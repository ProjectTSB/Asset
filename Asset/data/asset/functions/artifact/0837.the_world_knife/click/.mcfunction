#> asset:artifact/0837.the_world_knife/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/837/click/


# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1

# 時間の束縛が付与されていないのであれば、ターゲットを探す
    data modify storage api: Argument.ID set value 278
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run function asset:artifact/0837.the_world_knife/click/find_target/
# 弾を召喚 (ターゲットがいない場合)
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..5] anchored eyes positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function asset:artifact/0837.the_world_knife/click/shot
# 弾を召喚（ターゲットがいる場合）
    execute as @e[type=#lib:living,tag=N9.Target,distance=..5] at @s run function asset:artifact/0837.the_world_knife/click/the_world/
