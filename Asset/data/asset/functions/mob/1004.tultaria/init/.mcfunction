#> asset:mob/1004.tultaria/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1004/init

#> ボスキャラのモデル
# @private
#declare tag aj.tultaria.bone

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:tultaria/summon {args:{animation:neutral_air,start_animation:1b}}

# DeathTime設定
    data modify entity @s DeathTime set value 19

# タグ管理
    tag @s add RW.CanElementChange

# 発光パーツを設定
    data modify entity @e[type=item_display,tag=aj.tultaria.bone.right_ring,sort=nearest,limit=1] brightness set value {sky:15,block:15}
    data modify entity @e[type=item_display,tag=aj.tultaria.bone.left_ring,sort=nearest,limit=1] brightness set value {sky:15,block:15}

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["RW.Marker.SpawnPoint"]}

# 壁召喚（テスト処理）
    #execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] positioned ~-23 ~ ~-23 run place template asset:1004.wall

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -1

# Super!
    function asset:mob/super.init
