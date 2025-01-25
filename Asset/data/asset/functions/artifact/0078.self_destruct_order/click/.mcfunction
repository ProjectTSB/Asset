#> asset:artifact/0078.self_destruct_order/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/78/click/


# 自爆対象付与
    tag @e[type=minecraft:iron_golem,tag=Friend,tag=!Uninterferable,distance=..15] add 26.GolemBomb
    tag @e[type=minecraft:snow_golem,tag=Friend,tag=!Uninterferable,distance=..15] add 26.GolemBomb

#演出
    tellraw @a[distance=..20] [{"text":"爆発まで残り3秒","color":"red","bold":true}]
    execute at @e[tag=26.GolemBomb] run particle minecraft:squid_ink ~ ~ ~ 0 2 0 0.1 100 force @a[distance=..30]
    execute at @e[tag=26.GolemBomb] run playsound minecraft:entity.creeper.primed player @a[distance=..30] ~ ~ ~ 1 0.1
    effect give @e[tag=26.GolemBomb] minecraft:glowing 3 0 true

# 発動プレイヤーにタグを付与
    tag @s add 26.Owner

# カウントダウン開始
    scoreboard players set @s 26.TickCount 0
    schedule function asset:artifact/0078.self_destruct_order/click/count_down 1t replace