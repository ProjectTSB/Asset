#> asset:mob/0301.sinful_thoughts/tick/skill_select
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算するやーつ
    scoreboard players operation $Random Temporary %= $4 Const

# デバッグのコマンド
    #scoreboard players set $Random Temporary 3
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 8D.SkillSlash
    execute if score $Random Temporary matches 1 run tag @s add 8D.SkillGun
    execute if score $Random Temporary matches 2 run tag @s add 8D.SkillJump
    execute if score $Random Temporary matches 3 run tag @s add 8D.SkillStep
# リセット
    scoreboard players reset $Random Temporary
