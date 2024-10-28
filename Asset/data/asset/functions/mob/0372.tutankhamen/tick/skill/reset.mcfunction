#> asset:mob/0372.tutankhamen/tick/skill/reset
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/**

# スコアをセット
    scoreboard players set @s General.Mob.Tick -80

# Tagを削除
    tag @s remove AC.Laser
