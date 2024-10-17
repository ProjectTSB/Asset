#> asset:mob/1004.tultaria/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1004/init

#> ボスキャラのモデル
# @private
#declare tag aj.tultaria.bone

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:tultaria/summon

# ストレージ管理
    tag @s add RW.CanElementChange
    data modify storage asset:context this.Element set value [Fire,Water,Thunder]

# 自身のモデルに待機モーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/play

# モデルにTeleport_durationを設定
    execute as @e[type=#animated_java:root,tag=aj.tultaria.bone] run data modify entity @s teleport_duration set value 1

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["RW.Marker.SpawnPoint"]}

# 壁召喚（テスト処理）
    #execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] positioned ~-23 ~ ~-23 run place template asset:1004.wall

# スコアをセットする
    scoreboard players set @s RW.Tick 0
