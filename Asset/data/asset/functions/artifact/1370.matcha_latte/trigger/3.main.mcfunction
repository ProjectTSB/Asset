#> asset:artifact/1370.matcha_latte/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1370.matcha_latte/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $MaxMP

# そこそこ回復のブレでかくして安定しないMP回復的な感じでもいい

# 演出
    particle dust 0.4 0.6 0.2 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20
    playsound disabled_sounds:entity.player.levelup player @a ~ ~ ~ 1 2

# 乱数
    execute store result score $Random Temporary run random value 20..30

# 最大MPを取得
    function api:mp/get_max
    execute store result score $MaxMP Temporary run data get storage api: Return.MaxMP

# MP割合回復
    execute store result storage api: Argument.Fluctuation float 0.01 run scoreboard players operation $Random Temporary *= $MaxMP Temporary
    function api:mp/fluctuation

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $MaxMP Temporary
