#> asset:object/1167.thunderflash/tick/attack/
#
#
#
# @within function asset:object/1167.thunderflash/tick/move

#> Private
# @private
    #declare tag Target
    #declare score_holder $UserID

# 演出
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2257
    data modify storage api: Argument.FieldOverride.Scale set value 3.5f
    function api:object/summon

# 攻撃対象は演出と噛みあわせるために、現座標と0.5,1,-0.5ブロックずらした位置を纏めて行う (2ブロックに一度雷を落とすため)
# 若干見た目よりも判定は広くなるけど許容する
    function asset:object/1167.thunderflash/tick/attack/add_tag
    execute positioned ^ ^ ^-0.5 run function asset:object/1167.thunderflash/tick/attack/add_tag
    execute unless data storage asset:context this{Range:1} positioned ^ ^ ^0.5 run function asset:object/1167.thunderflash/tick/attack/add_tag
    execute unless data storage asset:context this{Range:1} unless data storage asset:context this{Range:2} positioned ^ ^ ^1 run function asset:object/1167.thunderflash/tick/attack/add_tag

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
