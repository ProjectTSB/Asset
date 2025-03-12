#> asset:mob/0365.frestchika/tick/base_move/
#
# 基本動作。攻撃など。
#
# @within function asset:mob/0365.frestchika/tick/

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!A5.InAction] General.Mob.Tick matches 40.. if entity @p[distance=..64] run function asset:mob/0365.frestchika/tick/base_move/skill/select/

# 選択したスキル発動
    execute if entity @s[tag=A5.InAction] run function asset:mob/0365.frestchika/tick/base_move/skill/active
