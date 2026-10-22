#> asset:artifact/1681.pre_cise/shared/keep_objects
#
# 自分のbig_preciseが存在しなければ、頭上のObjectと的を召喚する
#
# @input as player
# @within function
#   asset:artifact/1681.pre_cise/tick/1.trigger
#   asset:artifact/1682.pre_cise_empty/tick/1.trigger

# 自分のbig_preciseを探す
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=PreCise.BigPrecise,distance=..16] if score @s UserID = $UserID Temporary run scoreboard players set $Exists Temporary 1

# 無ければ一式を召喚する
    execute unless score $Exists Temporary matches 1 run function asset:artifact/1681.pre_cise/shared/summon_set

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Exists Temporary
