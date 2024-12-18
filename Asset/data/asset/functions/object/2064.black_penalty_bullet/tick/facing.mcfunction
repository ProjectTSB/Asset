#> asset:object/2064.black_penalty_bullet/tick/facing
#
# 追尾
#
# @within function asset:object/2064.black_penalty_bullet/tick/

# タグ付与
    tag @s add 2064.Target
# 回転
    execute as @e[tag=this,distance=..64,sort=nearest,limit=1] facing entity @e[tag=2064.Target,distance=..66,limit=1] eyes run tp @e[type=item_display,distance=..0.001] ^ ^ ^ ~ ~
# 下には向かない
    execute store result score $2064.Temp Temporary run data get entity @e[tag=this,distance=..64,sort=nearest,limit=1] Rotation[1] 100
    execute if score $2064.Temp Temporary matches 1.. as @e[tag=this,distance=..64,sort=nearest,limit=1] at @s run tp @e[type=item_display,distance=..0.001] ~ ~ ~ ~ 0

# 終了
    tag @s remove 2064.Target
    scoreboard players reset $2064.Temp Temporary
