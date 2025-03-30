#> asset:mob/1004.tultaria/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1004/init


# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_Tultaria",Active:true},{Datapack:"AJ_IllusionOfLoyalty",Active:true}]
    function asset:datapack/set_activation_state

#> ボスキャラのモデル
# @private
#declare tag aj.tultaria.bone

# DeathTime設定
    data modify entity @s DeathTime set value 19

# タグ管理
    tag @s add RW.CanElementChange

# 発光パーツを設定
    data modify entity @e[type=item_display,tag=aj.tultaria.bone.right_ring,sort=nearest,limit=1] brightness set value {sky:15,block:15}
    data modify entity @e[type=item_display,tag=aj.tultaria.bone.left_ring,sort=nearest,limit=1] brightness set value {sky:15,block:15}

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["RW.Marker.SpawnPoint"]}

# 召喚地点のPos[1]を記録しておく
    execute store result storage asset:context this.Pos.Y double 1 run data get entity @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] Pos[1]

# ちょっと上に移動
    tp @s ~ ~0.5 ~

# AJモデル召喚
    execute at @s rotated ~ 0 run function animated_java:tultaria/summon {args:{animation:neutral_air,start_animation:1b}}

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -1

# Super!
    function asset:mob/super.init
