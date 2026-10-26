#> asset:object/1206.precise_target/summon/m
#
# 的のitem_displayを召喚する
#
# @input args:
#   Yaw : float
#   Pitch : float
#   Item : compound (ItemStack)
#   Scale : float (一辺の大きさ)
#   LeftRotation : float[4] (向きの補正 [x,y,z,w] billboard後の軸で回る)
# @within function asset:object/1206.precise_target/summon/

# 元となるEntityを召喚する
# 的のアイテムを常に視点側へ向ける
# 大きさ(scale)と中心のずれ(translation)はここで調整する
# 向きの補正はbillboard後の軸で効くため、translationは0のまま中心を保つ
# チェストの0.12mは的中判定の誤差(距離1mで0.05m以内)の直径0.1mよりわずかに大きい
    $summon item_display ~ ~ ~ {Tags:["ObjectInit","PreCise.Target"],Rotation:[$(Yaw)f,$(Pitch)f],billboard:"center",teleport_duration:1,brightness:{block:15,sky:15},item:$(Item),transformation:{left_rotation:$(LeftRotation),right_rotation:[0f,0f,0f,1f],scale:[$(Scale)f,$(Scale)f,$(Scale)f],translation:[0f,0f,0f]}}
