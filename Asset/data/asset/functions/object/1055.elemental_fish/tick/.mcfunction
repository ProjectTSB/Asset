#> asset:object/1055.elemental_fish/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1055/tick

#> Private
# @private
    #declare tag 1055.OwnerPlayer
    #declare tag 1055.MoveMarker
    #declare tag 1055.OwnerPlayer

# 同IDのプレイヤーを特定
    execute at @a[distance=..30] if score @s 1055.OwnerID = @p UserID run tag @p add 1055.OwnerPlayer

# OwnerにMarkerを召喚する
    execute at @p[tag=1055.OwnerPlayer] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:["1055.MoveMarker"]}

# Ownerのマーカーの方を向く
    execute facing entity @e[type=marker,tag=1055.MoveMarker,distance=..30,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 頭の向き
    execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

# 継承
    execute at @s run function asset:object/super.tick

# パーティクル
    execute if data storage asset:context this{Element:Fire} positioned ^ ^ ^-0.3 run particle dust 1 0 0 0.5 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute if data storage asset:context this{Element:Fire} positioned ^ ^ ^-0.3 run particle dust 1 0.5 0 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

    execute if data storage asset:context this{Element:Thunder} positioned ^ ^ ^-0.3 run particle dust 1 1 0 0.5 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute if data storage asset:context this{Element:Thunder} positioned ^ ^ ^-0.3 run particle dust 1 1 0.7 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

    execute if data storage asset:context this{Element:Water} positioned ^ ^ ^-0.3 run particle dust 0 0.267 1 0.5 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute if data storage asset:context this{Element:Water} positioned ^ ^ ^-0.3 run particle dust 0 0.667 1 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

# 付近に敵がいるならスコア増やす
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] run scoreboard players add @s 1055.Attack 1

# 魔法攻撃
    execute if entity @s[scores={1055.Attack=20..}] rotated ~ 0 positioned ^0.1 ^0.4 ^0.5 run function asset:object/1055.elemental_fish/tick/shoot

# 付近に敵がいないならスコアリセット
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] run scoreboard players reset @s 1055.Attack

# 存在時間
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
# 一定Tick経過 または一定以上MoveMarkerから離れると消える
    execute if entity @s[scores={General.Object.Tick=400..}] run function asset:object/1055.elemental_fish/tick/disappear
    execute unless entity @e[type=marker,tag=1055.MoveMarker,distance=..30,limit=1] run function asset:object/1055.elemental_fish/tick/disappear

# リセット
    tag @p[tag=1055.OwnerPlayer] remove 1055.OwnerPlayer
    kill @e[type=marker,tag=1055.MoveMarker]
