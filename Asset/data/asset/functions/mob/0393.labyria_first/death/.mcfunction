#> asset:mob/0393.labyria_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/393/death

#> tag
# @private
    #declare tag AU.LabyriaDeath

# スケジュール起動
    tag @e[type=marker,tag=AX.Marker.SummonPoint,distance=..200] add AX.Death
    schedule function asset:mob/0393.labyria_first/ai/general/5.death/schedule 1t

# 管理用スライムに情報を送る
    scoreboard players operation $AX.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AX.Temp AU.Dummy.UUID run tag @s add AU.LabyriaDeath
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $AX.Temp AU.Dummy.UUID run scoreboard players set @s General.Mob.Tick 401

# リセット
    scoreboard players reset $AX.Temp AU.Dummy.UUID

# 継承元の処理
    function asset:mob/super.death
