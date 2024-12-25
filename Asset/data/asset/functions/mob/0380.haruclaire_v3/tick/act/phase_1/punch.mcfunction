#> asset:mob/0380.haruclaire_v3/tick/act/phase_1/punch
#
# フェーズ1
#
# @within asset:mob/0380.haruclaire_v3/tick/act/phase_1/

# 近くにプレイヤーがいる場合はそのまま攻撃
    execute if entity @a[gamemode=!spectator,distance=..4] run return run tag @s add AK.Skill.Punch

# ある程度遠い場合は移動を挟む
    tag @s add AK.Skill.Move
