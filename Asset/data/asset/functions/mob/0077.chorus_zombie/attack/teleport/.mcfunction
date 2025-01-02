#> asset:mob/0077.chorus_zombie/attack/teleport/
#
# 対象をテレポートする処理
#
# @within function asset:mob/0077.chorus_zombie/attack/

# スコアを設定する
    scoreboard players set $25.Secure Temporary 0
    scoreboard players set $25.LoopCount Temporary 6

# マーカーを用意する
    function api:data_get/rotation
    summon marker ~ ~ ~ {Tags:["25.Spread"]}
    data modify entity @e[type=marker,tag=25.Spread,distance=..0.01,limit=1] Rotation set from storage api: Rotation

# マーカーをランダムTPさせる
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,6d],[5d,5d]]
    execute as @e[type=marker,tag=25.Spread,distance=..0.01,limit=1] at @s run function lib:spread_entity/
# マーカーをalignする
    execute as @e[type=marker,tag=25.Spread,limit=1] at @s align xyz run tp @s ~0.5 ~ ~0.5

# 上2mと床の安全が確保できるまで降下
    execute as @e[type=marker,tag=25.Spread,limit=1] at @s run function asset:mob/0077.chorus_zombie/attack/teleport/secure
# 安全そうならターゲットをTPさせる
    execute if score $25.Secure Temporary matches 1 run function asset:mob/0077.chorus_zombie/attack/teleport/do

# リセット
    kill @e[type=marker,tag=25.Spread,limit=1]
    scoreboard players reset $25.Secure Temporary
    scoreboard players reset $25.LoopCount Temporary
