#> asset:mob/0372.tutankhamen/tick/skill/reset
#
#
#
# @within function
#   asset:mob/0372.tutankhamen/tick/skill/**
#   asset:mob/0372.tutankhamen/hurt/active_50per

# スコアをセット
    scoreboard players set @s General.Mob.Tick -10

# リセット
    scoreboard players reset @s AC.Count.Dash

# Tagを削除
    tag @s remove AC.Opening
    tag @s remove AC.Laser
    tag @s remove AC.ManyShoot
    tag @s remove AC.GiantSkull
    tag @s remove AC.HyperLaser
    tag @s remove AC.Coffin
    tag @s remove AC.DashSlash
    tag @s remove AC.ManyLaser
    tag @s remove AC.Charge

    tag @s remove AC.Dash.Left
    tag @s remove AC.Dash.Right
    tag @s remove AC.Dash.Side
    tag @s remove AC.Dash.Slash
    tag @s remove AC.Dash.Charge

    tag @s remove AC.InAction
