#> asset:mob/0372.tutankhamen/tick/phase_transition/restart
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/phase_transition/

# ベース動作を実行
    tag @s remove AC.Moveset.Transition
    tag @s add AC.Health.50Per

# スコアリセット
    scoreboard players set @s General.Mob.Tick -20

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
