#> asset:artifact/0876.uni/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0876.uni/trigger/2.check_condition
#> Private
# @private
    #declare score_holder $Random
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.8 2 0
    playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 1.6 0
    playsound entity.wither.shoot player @a ~ ~ ~ 0.3 1.6 0

# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 877
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.6
# スニークしてるなら集弾性能が上がる
    execute if predicate lib:is_sneaking run data modify storage lib: Argument.Spread set value 0.2
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:artifact/0876.uni/trigger/bullet
    tag @s remove Landing

# 乱数取得
    execute store result score $Random Temporary run random value 0..2
# 向きを適当に変える
    execute if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~ ~-0.5
    execute if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~-0.5 ~-0.5
    execute if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~0.5 ~-0.5
    scoreboard players reset $Random Temporary

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Random Temporary
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary
