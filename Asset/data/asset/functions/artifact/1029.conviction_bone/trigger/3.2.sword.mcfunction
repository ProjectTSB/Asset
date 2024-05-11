#> asset:artifact/1029.conviction_bone/trigger/3.2.sword
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/3.1.tick

# 自分にタグ付与
    tag @s add SL.This

# 回転する
# 自分の主の元にTP
    execute as @a if score @s UserID = @e[type=item_display,tag=SL.This,limit=1] SL.UserID positioned as @s run tp @e[type=item_display,tag=SL.This,limit=1] ~ ~ ~ ~20 ~


    tag @s remove SL.This
