#> asset:object/1067.jewel_rod_of_horai/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1067/tick

#> within
# @within function asset:object/1067.jewel_rod_of_horai/tick/**
    #declare score_holder $MS.TargetUUID
    #declare score_holder $MS.AttackLevel
    #declare tag MS.AttackTarget

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃対象のmobにタグ付け　攻撃発生前に魔法陣から25ブロック以上離れたら不発
    execute store result score $MS.TargetUUID Temporary run data get storage asset:context this.TargetUUID
    execute as @e[type=#lib:living,tag=!Friend,distance=..25] if score @s MobUUID = $MS.TargetUUID Temporary run tag @s add MS.AttackTarget

# 攻撃レベル取得
    execute store result score $MS.AttackLevel Temporary run data get storage asset:context this.AttackLevel

# パーティクル
    execute if score $MS.AttackLevel Temporary matches 0 run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_0
    execute if score $MS.AttackLevel Temporary matches 1 run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_1
    execute if score $MS.AttackLevel Temporary matches 2 run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_2
    execute if score $MS.AttackLevel Temporary matches 3 run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_3
    execute if score $MS.AttackLevel Temporary matches 4 run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_4
    execute if score @s General.Object.Tick matches 20 run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_attack

# ダメージ
    execute if score @s General.Object.Tick matches 20 run function asset:object/1067.jewel_rod_of_horai/tick/attack/damage

# リセット
    tag @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] remove MS.AttackTarget
    scoreboard players reset $MS.TargetUUID Temporary
    scoreboard players reset $MS.AttackLevel Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
