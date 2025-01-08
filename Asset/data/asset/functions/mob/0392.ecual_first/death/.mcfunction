#> asset:mob/0392.ecual_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/392/death

#> tag
# @private
    #declare tag AU.EcualDeath

# ディスプレイ削除
    kill @e[type=item_display,tag=AW.AnnounceLine,distance=..200]
    kill @e[type=item_display,tag=AW.AnnounceLineEven,distance=..200]

# スケジュール起動
    tag @e[type=marker,tag=AW.Marker.SummonPoint,distance=..200] add AW.Death
    schedule function asset:mob/0392.ecual_first/ai/general/8.death/schedule 1t

# 管理用スライムに情報を送る
    scoreboard players operation $AW.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AW.Temp AU.Dummy.UUID run tag @s add AU.EcualDeath
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AW.Temp AU.Dummy.UUID run scoreboard players set @s General.Mob.Tick 201

# リセット
    scoreboard players reset $AW.Temp AU.Dummy.UUID

# 継承元の処理
    function asset:mob/super.death
