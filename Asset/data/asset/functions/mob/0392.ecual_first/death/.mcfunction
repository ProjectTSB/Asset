#> asset:mob/0392.ecual_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/392/death

#> tag
# @private
    #declare tag AU.EcualDeath

# モデル削除
    function animated_java:ecual/remove/all

# ディスプレイ削除
    kill @e[type=item_display,tag=AW.AnnounceLine,distance=..200]
    kill @e[type=item_display,tag=AW.AnnounceLineEven,distance=..200]
    kill @e[type=marker,tag=AW.Marker.SummonPoint,distance=..200]

# 召喚
    data modify storage api: Argument.ID set value 2193
    function api:object/summon

# 管理用スライムに情報を送る
    scoreboard players operation $AW.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AW.Temp AU.Dummy.UUID run tag @s add AU.EcualDeath
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AW.Temp AU.Dummy.UUID run scoreboard players set @s General.Mob.Tick 201

# リセット
    scoreboard players reset $AW.Temp AU.Dummy.UUID

# 継承元の処理
    function asset:mob/super.death
