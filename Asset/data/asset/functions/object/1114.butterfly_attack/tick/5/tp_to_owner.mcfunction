#> asset:object/1114.butterfly_attack/tick/5/tp_to_owner
#
# Ownerへ移動
#
# @within function asset:object/1114.butterfly_attack/tick/5/

#> Private
# @private
    #declare score_holder $UserID

# Ownerへtp
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary at @s anchored eyes positioned ^ ^-0.6 ^ run tp @e[type=marker,tag=this,distance=..50,limit=1] ~ ~ ~ ~ ~

# リセット
    scoreboard players reset $UserID Temporary
