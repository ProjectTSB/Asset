#> asset:artifact/0908.spear_of_butterfly/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0908.spear_of_butterfly/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Diff

# 攻撃回数カウント
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= $P8.LatestUseTick Temporary
    execute unless score $Diff Temporary matches ..50 run scoreboard players reset @s P8.AttackCount
    scoreboard players add @s P8.AttackCount 1

# 演出
    playsound block.fire.ambient player @a ~ ~ ~ 0.4 1.3 0
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.5 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.5 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 0.4 0.8
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 0.4 1.2

# ダメージ関連
    function asset:artifact/0908.spear_of_butterfly/trigger/damage

# 演出等用Object召喚
    function asset:artifact/0908.spear_of_butterfly/trigger/summon_object

# 6段目なら攻撃回数をリセット
    execute if score @s P8.AttackCount matches 6.. run scoreboard players reset @s P8.AttackCount

# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $P8.Damage Temporary
