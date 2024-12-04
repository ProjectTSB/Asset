#> asset:artifact/0210.terra_blade/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/210/click/

# VFX
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25

# 剣を召喚
    function asset:artifact/0210.terra_blade/click/sword/summon_sword
