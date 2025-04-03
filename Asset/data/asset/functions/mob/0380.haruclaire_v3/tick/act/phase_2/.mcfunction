#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/
#
# 後半戦
#
# @within asset:mob/0380.haruclaire_v3/tick/act/

# 行動回数増加
    scoreboard players add @s AK.ActionCount 1

# 待機
    execute if score @s AK.ActionCount matches 1 run return 0
    execute if score @s AK.ActionCount matches 11 run return 0
    execute if score @s AK.ActionCount matches 16 run return 0
    execute if score @s AK.ActionCount matches 21..22 run return 0
    execute if score @s AK.ActionCount matches 23.. run return run scoreboard players set @s AK.ActionCount 2

# 中心への移動
    execute if score @s AK.ActionCount matches 6 run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center
    execute if score @s AK.ActionCount matches 14 run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center
    execute if score @s AK.ActionCount matches 18 run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center

# アイスクリメーション
    execute if score @s AK.ActionCount matches 10 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation
    execute if score @s AK.ActionCount matches 15 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation
    execute if score @s AK.ActionCount matches 20 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation


# 通常攻撃・ディレイ系
    execute if score @s AK.ActionCount matches 3 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay
    execute if score @s AK.ActionCount matches 6 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay
    execute if score @s AK.ActionCount matches 12 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay
    execute if score @s AK.ActionCount matches 16 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay
    execute if score @s AK.ActionCount matches 17 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay
    execute if score @s AK.ActionCount matches 18 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay

# 通常攻撃・直接攻撃系
    function asset:mob/0380.haruclaire_v3/tick/act/phase_2/normal
