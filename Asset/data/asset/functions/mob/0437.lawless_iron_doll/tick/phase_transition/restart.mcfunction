#> asset:mob/0437.lawless_iron_doll/tick/phase_transition/restart
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/phase_transition/

# マーカー片付けておく
    kill @e[type=marker,tag=C5.Marker,tag=!C5.Marker.SpawnPoint,distance=..256]

# ベース動作を実行
    tag @s remove C5.Moveset.Transition
    tag @s add C5.Moveset.BaseMove

# フェイズ進める
    scoreboard players set @s C5.Phase 2

# スコアリセット
    scoreboard players set @s General.Mob.Tick -1

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
