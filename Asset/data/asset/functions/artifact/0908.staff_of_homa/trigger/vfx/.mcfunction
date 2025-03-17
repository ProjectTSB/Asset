#> asset:artifact/0908.staff_of_homa/trigger/vfx/
#
#
#
# @within function asset:artifact/0908.staff_of_homa/trigger/3.main

#> Private
# @private
    #declare score_holder $Diff

# 攻撃回数カウント
    execute store result score $Diff Temporary run time query gametime
    scoreboard players operation $Diff Temporary -= $P8.LatestUseTick Temporary
    execute unless score $Diff Temporary matches ..50 run scoreboard players reset @s P8.AttackCount
    scoreboard players add @s P8.AttackCount 1

# debug
    # scoreboard players set @s P8.AttackCount 2

# AttackCountをFieldOverrideに入れて演出用Object召喚
    data modify storage api: Argument.ID set value 1114
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players get @s P8.AttackCount
    execute anchored eyes positioned ^ ^-0.6 ^ run function api:object/summon


# 6回でリセット
    execute if score @s P8.AttackCount matches 2.. run scoreboard players reset @s P8.AttackCount

# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RecurisveCount Temporary
