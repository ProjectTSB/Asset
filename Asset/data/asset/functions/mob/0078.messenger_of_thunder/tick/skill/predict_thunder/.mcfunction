#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/
#
# 偏差雷攻撃のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# プレイヤーのベクトルを取得
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/get_vector

# リセット
    execute if entity @s[scores={General.Mob.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/reset
