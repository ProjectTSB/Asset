#> asset:object/1204.bouncy_ball/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1204/kill

#リセット処理
    tag @e[type=#lib:living_without_player,distance=..5] remove 1AI.HitEnemy
    
# 演出
    playsound tsb_sounds:rifle_shot player @a ~ ~ ~ 1 1.8

# 消滅
    kill @s
