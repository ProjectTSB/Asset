#> asset:object/2009.magic_bullet/tick/facing
#
# プレイヤーの方を向く
#
# @within function asset:object/2009.magic_bullet/tick/

# タグ付与
    tag @s add 2009.Target
# 滑らかに回転
    execute as @e[tag=this,distance=..64,sort=nearest,limit=1] at @s positioned ^ ^ ^-4 facing entity @e[tag=2009.Target,distance=..66,limit=1] eyes positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @e[type=item_display,distance=..0.001] ^ ^ ^ ~ ~
    execute if predicate api:global_vars/difficulty/min/3_blessless as @e[tag=this,distance=..64,sort=nearest,limit=1] at @s positioned ^ ^ ^-4 facing entity @e[tag=2009.Target,distance=..66,limit=1] eyes positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @e[type=item_display,distance=..0.001] ^ ^ ^ ~ ~
# 終了
    tag @s remove 2009.Target
