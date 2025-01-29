#> asset:artifact/0607.u_and_w_06/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/607/click/

#> Private
# @private
    #declare score_holder $UseCount
    #declare score_holder $Random
    #declare tag SpreadMarker

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 2

# 残り回数が1回の時発動した場合
    execute if data storage asset:context {BrokeItem:true} run data modify storage api: Argument.ID set value 608
    execute if data storage asset:context {BrokeItem:true} run function api:artifact/replace/from_id

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.3

# ランダムで拡散率がひどいことになる
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $100 Const
    # 10%で発動
        execute if score $Random Temporary matches 0..9 run data modify storage lib: Argument.Spread set value 2
    # 50%で発動
        execute if score $Random Temporary matches 10..69 run data modify storage lib: Argument.Distance set value 5.0
        execute if score $Random Temporary matches 10..69 run data modify storage lib: Argument.Spread set value 0.1

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:artifact/0607.u_and_w_06/click/3.1.bullet
    tag @s remove Landing

# 向きを変える
    tp @s ~ ~ ~ ~ ~-1

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Random Temporary
