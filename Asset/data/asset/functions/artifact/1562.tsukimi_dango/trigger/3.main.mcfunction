#> asset:artifact/1562.tsukimi_dango/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1562.tsukimi_dango/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Max
    #declare score_holder $All
    #declare score_holder $Exclude

# 演出
    playsound ogg:random.levelup player @a ~ ~ ~ 1 2
    particle dust 1 1 0.65 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 30 normal @a

# この神器によるバリア量を除外
    # 全体のバリア量取得
        function api:entity/player/absorption/calc_amount
        execute store result score $All Temporary run data get storage api: Return.Absorption.Amount 1000
    # この神器によるバリア量を取得
        data modify storage api: Argument.UUID set value [I;1,3,371,0]
        function api:entity/player/absorption/get
        execute store result score $Exclude Temporary run data get storage api: Return.Absorption.Amount 1000
    # 全体から除外分を減らす
        scoreboard players operation $All Temporary -= $Exclude Temporary

# 最大バリア量定義(1000倍)
    scoreboard players set $Max Temporary 20000

# (全体バリア量 - この神器のバリア)のN%をバリアとする
    data modify storage api: Argument.FieldOveeride.Barrier set value 0d
    execute store result storage api: Argument.FieldOverride.Barrier double 0.000333 run scoreboard players operation $All Temporary < $Max Temporary

# 付与
    data modify storage api: Argument.ID set value 371
    data modify storage api: Argument.Duration set value 600
    execute unless data storage api: Argument.FieldOveeride{Barrier:0d} run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Max Temporary
    scoreboard players reset $All Temporary
    scoreboard players reset $Exclude Temporary
