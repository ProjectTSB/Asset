#> asset:object/1076.airlift/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1076/init

#> prv
# @private
    #declare tag SoundSource

# エンジン音
    tag @s add SoundSource
    execute as @a[distance=..32] at @s facing entity @e[type=item_display,tag=SoundSource,distance=..32,limit=1] eyes positioned ^ ^ ^0.1 run playsound minecraft:entity.bee.loop neutral @s ~ ~ ~ 3 0.68 1

# パーティクル
    particle happy_villager ~ ~ ~ 1 1 1 0 50

# reset
    tag @s remove SoundSource
