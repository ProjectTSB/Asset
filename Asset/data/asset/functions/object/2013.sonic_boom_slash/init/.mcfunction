#> asset:object/2013.sonic_boom_slash/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2013/init

# 実行向きに合わせる
    tp @s ~ ~ ~ ~ ~

# データ保存用マーカー召喚
    summon marker ~ ~ ~ {Tags:["2013.Data"]}
    ride @e[type=marker,tag=2013.Data,distance=..0.01,limit=1] mount @s
    execute on passengers run data modify entity @s data set value {}

# サウンド
    playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 2 0.8
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 1.8
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 2 1.5
