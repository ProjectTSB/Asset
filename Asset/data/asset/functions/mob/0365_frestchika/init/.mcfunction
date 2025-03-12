#> asset:mob/0365_frestchika/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/365/init

# DeathTime設定
    data modify entity @s DeathTime set value 19

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["A5.Marker.SpawnPoint"]}

# 召喚地点のPos[1]を記録しておく
    execute store result storage asset:context this.Pos.Y double 1 run data get entity @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] Pos[1]

# ちょっと上に移動
    tp @s ~ ~0.5 ~

# AJモデル召喚
    execute at @s rotated ~ 0 run function animated_java:frestchika/summon {args:{animation:intro,start_animation:1b}}

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -1

# Super!
    function asset:mob/super.init
