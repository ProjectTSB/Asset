#> asset:artifact/0948.ft_139_rifle/using_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/948/using_item/

#> Private
# @private
    #declare tag SpreadMarker
    #declare score_holder $Random

# 演出
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1.6
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# 残り回数が1回の時発動した場合
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.ID set value 949
    execute if data storage asset:context {BrokeItem: true} run function api:artifact/replace/from_id

# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.8
# スニークしてるなら集弾性能が上がる
    execute if predicate lib:is_sneaking run data modify storage lib: Argument.Spread set value 0.2
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:artifact/0948.ft_139_rifle/using_item/bullet
    tag @s remove Landing

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const
# 向きを適当に変える
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~ ~-1
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~-1 ~-1
    execute unless predicate lib:is_sneaking if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~1 ~-1
    scoreboard players reset $Random Temporary

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Random Temporary
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary
