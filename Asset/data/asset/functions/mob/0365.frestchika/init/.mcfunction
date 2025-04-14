#> asset:mob/0365.frestchika/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/365/init

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["A5.Marker.SpawnPoint","A5.Marker"]}

# 召喚地点のPos[1]を記録しておく
    execute store result storage asset:context this.Pos.Y double 1 run data get entity @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] Pos[1]

# ちょっと上に移動
    tp @s ~ ~0.5 ~

# AJモデル召喚
    execute at @s rotated ~ 0 run function animated_java:frestchika/summon {args:{animation:intro,start_animation:1b}}

# AJモデルのアイテムスロットのデータ設定(Animated Javaのツール側ではまともに反映されないので)
    data merge entity @e[type=item_display,tag=aj.frestchika.node.right_item_display,sort=nearest,limit=1] {interpolation_duration:1,teleport_duration:1,item_display:"thirdperson_righthand"}
    data merge entity @e[type=item_display,tag=aj.frestchika.node.left_item_display,sort=nearest,limit=1] {interpolation_duration:1,teleport_duration:1,item_display:"thirdperson_righthand"}
    tag @e[type=item_display,tag=aj.frestchika.node.right_item_display,sort=nearest,limit=1] add A5.Model.RightHandItem
    tag @e[type=item_display,tag=aj.frestchika.node.left_item_display,sort=nearest,limit=1] add A5.Model.LeftHandItem

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -1

# Super!
    function asset:mob/super.init
