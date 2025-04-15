#> asset:artifact/0837.the_world_knife/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0837.the_world_knife/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1

# 時間の束縛が付与されていないのであれば、ターゲットを探す
    data modify storage api: Argument.ID set value 278
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run function asset:artifact/0837.the_world_knife/trigger/find_target/
# 弾を召喚 (ターゲットがいない場合)
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..5] anchored eyes positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function asset:artifact/0837.the_world_knife/trigger/shot
# 弾を召喚（ターゲットがいる場合）
    execute as @e[type=#lib:living,tag=N9.Target,distance=..5] at @s run function asset:artifact/0837.the_world_knife/trigger/the_world/
