#> asset:object/1167.thunderflash/tick/attack/
#
#
#
# @within function asset:object/1167.thunderflash/tick/move

#> Private
# @private
    #declare tag Target
    #declare score_holder $UserID
    #declare score_holder $Range

# 演出
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2257
    data modify storage api: Argument.FieldOverride.Scale set value 3.5f
    function api:object/summon

# 居合と同じ0.5ブロック刻みの位置で攻撃対象を選ぶ
# 若干見た目よりも判定は広くなるけど許容する
    execute store result score $Range Temporary run data get storage asset:context this.Range
    function asset:object/1167.thunderflash/tick/attack/add_tag
    execute if score $Range Temporary matches 2.. positioned ^ ^ ^0.5 run function asset:object/1167.thunderflash/tick/attack/add_tag
    execute if score $Range Temporary matches 3.. positioned ^ ^ ^1 run function asset:object/1167.thunderflash/tick/attack/add_tag
    execute if score $Range Temporary matches 4.. positioned ^ ^ ^1.5 run function asset:object/1167.thunderflash/tick/attack/add_tag
    scoreboard players reset $Range Temporary

# Owner特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# ダメージ
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..20] run function asset:object/1167.thunderflash/tick/attack/check
    function api:damage/single_damage_session/close

# リセット
    tag @e[type=#lib:living_without_player,tag=Target,distance=..20] remove Target
    scoreboard players reset $UserID Temporary
    tag @p[tag=Owner] remove Owner
