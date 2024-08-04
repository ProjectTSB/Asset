#> asset:mob/0391.axia_first/ai/general/4.select_skill
#
# スキルを選択する
#
# @within function asset:mob/0391.axia_first/**

# デバッグ用 スキル指定
    scoreboard players set @s AV.SkillSelect 0

# スキル分岐
    # 二連突進
        execute if score @s AV.SkillSelect matches 1 run scoreboard players set @s AV.AnimationNum 0

    # プラズマショック
        execute if score @s AV.SkillSelect matches 2 run scoreboard players set @s AV.AnimationNum 0

# アニメーションリセット
    scoreboard players add @s AV.AnimationTick 1
