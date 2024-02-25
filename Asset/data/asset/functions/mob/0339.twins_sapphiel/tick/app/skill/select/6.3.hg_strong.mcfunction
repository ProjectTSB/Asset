#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.3.hg_strong
#
# 使用するスキルを決定する ハンドガン装備 強め・長めの攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/select/5.1.interrupt_hg

# ランダム
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# ワープポイント設置
    execute if score $Random Temporary matches 0 run tag @s add 9F.Skill.Hg.Warp.Shot
# 正拳突き
    execute if score $Random Temporary matches 1 run tag @s add 9F.Skill.Hg.Punch
# フルバースト
    execute if score $Random Temporary matches 2 run tag @s add 9F.Skill.Hg.Fullburst.Start

# リセット
    scoreboard players reset $Random Temporary
