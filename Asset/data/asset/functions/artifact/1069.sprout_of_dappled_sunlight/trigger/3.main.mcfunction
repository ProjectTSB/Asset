#> asset:artifact/1069.sprout_of_dappled_sunlight/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1069.sprout_of_dappled_sunlight/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $ItemCount
    #declare score_holder $MPHeal

# 演出
    particle dust 1 1000000000 1 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 50 normal @a
    particle happy_villager ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.7
    playsound ogg:random.levelup player @a ~ ~ ~ 0.4 1.8

# MP最大値を取得
    function api:mp/get_max

# 所持数を取得
    execute store result score $ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1069}}}]

# MPを最大値の2.5(N + 1)%回復する
# N = 所持数

# MPの2.5%の100倍を取得
    execute store result score $MPHeal Temporary run data get storage api: Return.MaxMP 2.5

# 個数に+1する
    scoreboard players add $ItemCount Temporary 1

# 計算して0.01倍して代入する
    execute store result storage api: Argument.Fluctuation float 0.01 run scoreboard players operation $MPHeal Temporary *= $ItemCount Temporary

# 回復する
    function api:mp/fluctuation

# リセット
    scoreboard players reset $ItemCount Temporary
    scoreboard players reset $MPHeal Temporary
