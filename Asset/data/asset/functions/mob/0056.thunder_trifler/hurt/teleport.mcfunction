#> asset:mob/0056.thunder_trifler/hurt/teleport
#
# テレポート
#
# @within function asset:mob/0056.thunder_trifler/hurt/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# Tickを記録
    execute store result storage asset:context this.LatestTPTick int 1 run time query gametime

# マーカーをワープさせて、そこが安全地帯ならワープする
    execute at @p[tag=Attacker,distance=..50] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @p[tag=Attacker,distance=..50] run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] if block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~-1 ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~

# 武器が剣の場合弓に切替
    execute if entity @s[tag=1K.Sword] if predicate api:global_vars/difficulty/max/2_hard run item replace entity @s weapon.mainhand with bow
    execute if entity @s[tag=1K.Sword] if predicate api:global_vars/difficulty/min/3_blessless run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"punch",lvl:1s}]}

# 剣Tag削除
    execute if entity @s[tag=1K.Sword] run tag @s remove 1K.Sword

# speedバフ消し
    effect clear @s speed
# リセット
    kill @e[type=marker,tag=SpreadMarker]
