#> asset:artifact/1065.magic_bullet/click/loop/bullet/teleport
#
# 魔法陣から魔法陣へワープする
#
# @within function asset:artifact/1065.magic_bullet/click/loop/bullet/main

# OwnerIDが同じ魔法陣へワープする
    execute at @e[type=item_display,tag=TL.TeleportPosition,distance=..110] if score @s TL.OwnerID = @e[type=item_display,tag=TL.TeleportPosition,limit=1] TL.OwnerID rotated ~ 0 positioned ^ ^ ^-0.2 run tp @s ~ ~ ~ ~ ~

# 演出
    execute at @s run function asset:artifact/1065.magic_bullet/click/loop/bullet/vfx
