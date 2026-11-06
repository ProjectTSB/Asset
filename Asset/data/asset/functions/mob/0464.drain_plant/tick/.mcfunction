#> asset:mob/0464.drain_plant/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/464/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 常時演出
    particle mycelium ~ ~1.5 ~ 2 1 2 0 1 normal @a

# 落下周り
    function asset:mob/0464.drain_plant/tick/fall/

# 攻撃モードか否かで行動を変える
    # 攻撃
        execute if data storage asset:context this{IsAttackMode:true} run function asset:mob/0464.drain_plant/tick/attack/
    # 移動
        execute if data storage asset:context this{IsFalling:false} unless data storage asset:context this{IsAttackMode:true} run function asset:mob/0464.drain_plant/tick/move/
