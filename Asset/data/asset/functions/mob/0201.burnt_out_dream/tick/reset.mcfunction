#> asset:mob/0201.burnt_out_dream/tick/reset
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/**

# スコアを戻す
    scoreboard players set @s General.Mob.Tick -60
    scoreboard players set @s[tag=5L.Step] General.Mob.Tick -10

# タグを消す
    tag @s remove 5L.Sword
    tag @s remove 5L.Arrow
    tag @s remove 5L.Step
