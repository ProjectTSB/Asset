#> asset:object/1046.magic_bullet/tick/teleport
#
# IDが同じ魔法陣へテレポートする
#
# @within function asset:object/1046.magic_bullet/tick/

#> Private
# @private
    #declare score_holder $1046.ID

# 自身のIDをスコアへ
    execute store result score $1046.ID Temporary run data get storage asset:context this.ID

# 同IDを持つ魔法陣へテレポート
    execute as @e[type=item_display,scores={ObjectID=1045},distance=..120] if score @s 1045.ID = $1046.ID Temporary at @s run tp @e[type=marker,tag=this,distance=..120] ^ ^ ^-0.2 ~ 0

# vfx
    execute at @s run function asset:object/1046.magic_bullet/tick/vfx

# リセット
    scoreboard players reset $1046.ID Temporary
