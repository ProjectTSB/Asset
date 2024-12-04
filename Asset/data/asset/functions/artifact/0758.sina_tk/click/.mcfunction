#> asset:artifact/0758.sina_tk/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/758/click/


# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 759
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id

# 演出
    playsound block.bamboo.place player @a ~ ~ ~ 0.4 0.7 0

# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.25
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 弾を召喚する
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run summon marker ~ ~ ~ {Tags:["Projectile","L2.Bullet","Init"]}

# 弾の向きを合わせる
    execute as @e[type=marker,tag=L2.Bullet,tag=Init,distance=..3] at @s facing entity @e[type=marker,tag=SpreadMarker,distance=..5,limit=1] feet run tp @s ~ ~ ~ ~ ~

# UserIDコピー
    scoreboard players operation @e[type=marker,tag=L2.Bullet,tag=Init,distance=..3,limit=1] L2.UserID = @s UserID

# ループスタート
    schedule function asset:artifact/0758.sina_tk/click/bullet/loop 1t replace

    kill @e[type=marker,tag=SpreadMarker,distance=..5]
    tag @e[type=marker,tag=L2.Bullet,tag=Init,distance=..3] remove Init