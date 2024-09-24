#> asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/loop
#
# ノヴァ拡散 ループ
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
#   asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/loop

# 再拡散時用にリセット
    scoreboard players reset $AZ.Temp Temporary

# 再拡散用スコア上昇
    scoreboard players add $AZ.Loop Temporary 1

# マーカーを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# プレイヤーの場所へとワープ
    execute at @e[type=marker,tag=AZ.Marker.SummonPoint,distance=..100] at @r[tag=!PlayerShouldInvulnerable,distance=..100] run tp 0-0-0-0-0 ^ ^ ^ ~ ~

# Posの調整
    data modify entity 0-0-0-0-0 Pos[1] set from entity @e[type=marker,tag=AZ.Marker.SummonPoint,distance=..100,limit=1] Pos[1]

# 拡散する
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# 半径22m以内ではない 又は 他と重なっている場合再拡散する
    execute at 0-0-0-0-0 unless entity @e[type=marker,tag=AZ.Marker.SummonPoint,distance=..22,limit=1] run scoreboard players set $AZ.Temp Temporary 1
    execute at 0-0-0-0-0 if entity @e[type=item_display,tag=2007.NovaCore,distance=0.001..6] run scoreboard players set $AZ.Temp Temporary 1

# 条件を満たしていれば置く
    execute unless score $AZ.Temp Temporary matches 1 at 0-0-0-0-0 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# 満たしていなければ再拡散
    execute if score $AZ.Temp Temporary matches 1 if score $AZ.Loop Temporary matches ..10 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/loop
