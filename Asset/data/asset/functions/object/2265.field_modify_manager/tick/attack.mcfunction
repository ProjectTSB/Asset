#> asset:object/2265.field_modify_manager/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/

# 攻撃適用
    say こうげき

# リセット
    scoreboard players set @s 2265.Progress.Current 0

# カウントを減らし、攻撃が終了した場合自身を消去
    scoreboard players remove @s 2265.AttackCount 1
    execute if score @s 2265.AttackCount matches ..0 run function asset:object/2265.field_modify_manager/tick/kill
