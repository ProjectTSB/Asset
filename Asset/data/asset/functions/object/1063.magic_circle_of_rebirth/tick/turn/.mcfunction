#> asset:object/1063.magic_circle_of_rebirth/tick/turn/
#
# 敵の方を向く処理
#
# @within function asset:object/1063.magic_circle_of_rebirth/tick/

#> private
# @private
    #declare score_holder $TJ.UserID

# プレイヤー視点から敵を探す
    execute store result score $TJ.UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score $TJ.UserID Temporary = @s UserID run tag @s add TJ.This
    execute as @p[tag=TJ.This] at @s run function asset:object/1063.magic_circle_of_rebirth/tick/turn/search.m with storage asset:context this.Distance
# タグ持ちを見る
    execute if entity @e[type=#lib:living,tag=TJ.Target,distance=..30,limit=1] run tag @s add TJ.Targeted
    tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=TJ.Target,distance=..30,limit=1] eyes
# リセット
    scoreboard players reset $TJ.UserID Temporary
    tag @a[tag=TJ.This,distance=..30] remove TJ.This
    tag @e[type=#lib:living,tag=TJ.Target,distance=..30] remove TJ.Target
