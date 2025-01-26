#> asset:artifact/0801.red_secret_stone/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0801.red_secret_stone/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $HealValue

# 演出
    particle minecraft:composter ~ ~1 ~ 1 0.4 1 1 25 normal @a
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 0.4 0.8

# 所持数を基に回復量を計算 HealValue = 2.5(n+1)
    execute store result score $HealValue Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:801}}}]
    scoreboard players add $HealValue Temporary 1

# 回復する
    execute store result storage lib: Argument.Heal double 3 run scoreboard players get $HealValue Temporary
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset

# リセット
    scoreboard players reset $HealValue Temporary
