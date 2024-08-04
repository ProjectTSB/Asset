#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/move
#
# 再帰処理で前進する
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/move

# tpする
    tp @s ^ ^ ^0.25

# 演出
    execute at @s run particle dust 0.2 0.2 1 1.3 ~ ~ ~ 0 0 0 0 1
    execute at @s run particle dust 0.2 0.2 1 1.3 ^ ^ ^0.125 0 0 0 0 1

# ヒットしたEntityにターゲットTagを付与
    execute if entity @s[scores={TL.Tick=21..}] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,tag=!PlayerShouldInvulnerable,tag=!Object,tag=!Uninterferable,dx=0] add TL.TargetEntity

# 再帰移動
# プレイヤーを狙う状態かつ移動し始めてから1tick目(20)かつ、$Recursiveが1の時に強制的に$Recursiveを10にする
# 自然に魔法陣から魔法陣へワープさせるため
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=TL.AimToPlayer,scores={TL.Tick=20}] if score $Recursive Temporary matches 1.. run scoreboard players set $Recursive Temporary 10
    execute if score $Recursive Temporary matches ..9 at @s if block ^ ^ ^0.25 #lib:no_collision run function asset:artifact/1065.magic_bullet/trigger/loop/bullet/move
