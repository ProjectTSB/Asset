#> asset:mob/0464.drain_plant/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/464/tick

# 攻撃モードか否かで行動を変える
    execute if data storage asset:context this{IsAttackMode:true} run function asset:mob/0464.drain_plant/tick/attack/
