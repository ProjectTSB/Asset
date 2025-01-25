#> asset:artifact/1065.magic_bullet/click/loop/bullet/move
#
# 再帰処理で前進する
#
# @within function
#   asset:artifact/1065.magic_bullet/click/loop/bullet/main
#   asset:artifact/1065.magic_bullet/click/loop/bullet/move

# tpする
    tp @s ^ ^ ^0.25

# 演出
    execute at @s run particle dust 0.2 0.2 1 1.3 ~ ~ ~ 0 0 0 0 1 force @a
    execute at @s run particle dust 0.2 0.2 1 1.3 ^ ^ ^0.125 0 0 0 0 1 force @a

# ヒットしたEntityにターゲットTagを付与
    execute if entity @s[scores={TL.Tick=21..}] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,tag=!PlayerShouldInvulnerable,tag=!Object,tag=!Uninterferable,dx=0] add TL.TargetEntity

# 再帰移動
# 自然に魔法陣から魔法陣へワープさせるため、
# プレイヤーを狙う状態かつ移動し始めてから1tick目(20)かつ、$Recursiveが1の時に強制的に中断
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=TL.AimToPlayer,scores={TL.Tick=20}] if score $Recursive Temporary matches 1.. run return fail
    execute if score $Recursive Temporary matches ..9 at @s if block ^ ^ ^0.25 #lib:no_collision run function asset:artifact/1065.magic_bullet/click/loop/bullet/move
