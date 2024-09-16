#> asset:mob/0363.white_spellbook/tick/spread
#
# 自機外しのための拡散処理
#
# @within function asset:mob/0363.white_spellbook/tick/magic

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを拡散させ、その位置で召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..20,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..20,limit=1] run function api:mob/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker]
