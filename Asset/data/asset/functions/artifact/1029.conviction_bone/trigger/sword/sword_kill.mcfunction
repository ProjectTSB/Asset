#> asset:artifact/1029.conviction_bone/trigger/sword/sword_kill
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/sword/sword


# 弾を召喚
    execute rotated ~ 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~45 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~90 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~135 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~180 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~225 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~270 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon
    execute rotated ~315 0 positioned ^ ^ ^2 positioned ~ ~1.3 ~ run function asset:artifact/1029.conviction_bone/trigger/shot/summon

# 演出
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 4 1
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 4 0.7

# 自害
    kill @e[type=item_display,tag=SL.This,distance=..20,sort=nearest,limit=1]
