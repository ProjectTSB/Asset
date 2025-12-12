#> asset:artifact/1332.bebebeam/trigger/beam/
#
#
#
# @within function
#   asset:artifact/1332.bebebeam/trigger/3.main
#   asset:artifact/1332.bebebeam/trigger/loop/main

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    playsound tsb_sounds:blaster2 player @a ~ ~ ~ 0.3 1.8
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 0.7 1.5

# 発射数のデクリメント
    scoreboard players remove @s 110.Count 1

# 属性管理スコアの管理
# 0:火, 1:水, 2:雷
# インクリメントし、3以上なら0に戻す
    scoreboard players add @s 110.Element 1
    execute if score @s 110.Element matches 3.. run scoreboard players set @s 110.Element 0

# 実行位置を拡散させランダムにする
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.5
    data modify storage lib: Argument.Spread set value 0.5
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute positioned as @e[type=marker,tag=SpreadMarker,limit=1] run function asset:artifact/1332.bebebeam/trigger/beam/shoot
    kill @e[type=marker,tag=SpreadMarker,distance=..5]
