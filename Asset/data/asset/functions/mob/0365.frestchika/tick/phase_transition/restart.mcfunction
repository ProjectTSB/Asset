#> asset:mob/0365.frestchika/tick/phase_transition/restart
#
#
#
# @within function asset:mob/0365.frestchika/tick/phase_transition/

# マーカー片付けておく
    kill @e[type=marker,tag=A5.Marker.Aim,distance=..64]

# ベース動作を実行
    tag @s remove A5.Moveset.Transition
    tag @s add A5.Moveset.BaseMove

# フェイズ進める
    scoreboard players set @s A5.Phase 2

# スコアリセット
    scoreboard players set @s General.Mob.Tick -20

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
