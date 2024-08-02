#> asset:artifact/1065.magic_bullet/trigger/4.init_bullet
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

#> Private
# @private
    #declare score_holder $RemainCount
    #declare score_holder $7

# Tagを付与
    tag @s add TL.Bullet

# 視点を使用者に合わせる
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# 何回目の弾丸かを計算し、スコアとして保持
# (7 - 使用回数)
    scoreboard players set $7 Temporary 7
    execute store result score $RemainCount Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute store result score @s TL.UseCount run scoreboard players operation $7 Temporary -= $RemainCount Temporary
