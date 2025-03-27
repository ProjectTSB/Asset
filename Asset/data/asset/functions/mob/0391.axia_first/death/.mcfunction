#> asset:mob/0391.axia_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/391/death

#> tag
# @private
    #declare tag AU.AxiaDeath

# モデル削除
    function animated_java:axia/remove/all

# ディスプレイ削除
    kill @e[type=item_display,tag=AV.AnnounceLine,distance=..200]
    kill @e[type=marker,tag=AV.Marker.SummonPoint,distance=..200]

# 召喚
    data modify storage api: Argument.ID set value 2192
    function api:object/summon

# 管理用スライムに情報を送る
    scoreboard players operation $AV.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AV.Temp AU.Dummy.UUID run tag @s add AU.AxiaDeath
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AV.Temp AU.Dummy.UUID run scoreboard players reset @s General.Mob.Tick

# リセット
    scoreboard players reset $AV.Temp AU.Dummy.UUID

# 継承元の処理
    function asset:mob/super.death
