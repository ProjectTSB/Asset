#> asset:mob/0437.lawless_iron_doll/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/437/init

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["C5.Marker.SpawnPoint","C5.Marker"]}

# モデルを召喚
    execute at @s rotated ~ 0 run function animated_java:lawless_iron_doll/summon {args:{animation:intro,start_animation:1b}}

# AJモデルのアイテムスロットのデータ設定(Animated Javaのツール側ではまともに反映されないので)
#    data merge entity @e[type=item_display,tag=aj.frestchika.bone.right_item_display,sort=nearest,limit=1] {interpolation_duration:1,teleport_duration:1,item_display:"thirdperson_righthand"}
#    data merge entity @e[type=item_display,tag=aj.frestchika.bone.left_item_display,sort=nearest,limit=1] {interpolation_duration:1,teleport_duration:1,item_display:"thirdperson_righthand"}

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -1

# Super!
    function asset:mob/super.init
