#> asset:object/1206.precise_target/summon/m
#
# @input args:
#   Yaw : float
#   Pitch : float
#   Block : string (ブロックID)
#   ScaleZ : float (奥行き)
#   ShiftZ : float (奥行きのtranslation)
# @within function asset:object/1206.precise_target/summon/

# 元となるEntityを召喚する
# 的ブロックを一辺0.12mの平面 (チェストは奥行きも0.12m)にして常に視点側へ向ける
# 一辺0.12mは的中判定の誤差(距離1mで0.05m以内)の直径0.1mよりわずかに大きい
# translationはscaleの半分を負方向にずらし、ブロックの中心をエンティティ位置(billboardの回転軸)に合わせる
# 変換はbillboardの回転後のローカル軸で行われるため、奥行き方向はz軸になる
# 平面のtranslationの奥行きは-0.01 チェストはscaleの半分の-0.06
    $summon block_display ~ ~ ~ {Tags:["ObjectInit","PreCise.Target"],Rotation:[$(Yaw)f,$(Pitch)f],billboard:"center",teleport_duration:1,brightness:{block:15,sky:15},block_state:{Name:"$(Block)"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.12f,0.12f,$(ScaleZ)f],translation:[-0.06f,-0.06f,$(ShiftZ)f]}}
