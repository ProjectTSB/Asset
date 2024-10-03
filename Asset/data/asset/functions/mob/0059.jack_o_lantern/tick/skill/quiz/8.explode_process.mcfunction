#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/8.explode_process
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/7.glowing

#> Private
# @private
    #declare score_holder $Interval

# ハード以上なら一定間隔で偽物の位置にvfxを表示
    scoreboard players operation $Interval Temporary = @s 1N.Tick
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 at @e[type=husk,scores={MobID=224},distance=..30] positioned ~ ~0.2 ~ run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/9.explode_ready_vfx
    execute if score $Interval Temporary matches 2 at @e[type=husk,scores={MobID=224},distance=..30] positioned ~ ~0.2 ~ rotated ~30 ~ run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/9.explode_ready_vfx
    execute if score $Interval Temporary matches 4 at @e[type=husk,scores={MobID=224},distance=..30] positioned ~ ~0.2 ~ rotated ~60 ~ run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/9.explode_ready_vfx

# 1体ずつ爆破
    execute if entity @s[scores={1N.Tick=200..}] if score $Interval Temporary matches 0 at @e[type=husk,scores={MobID=224},distance=..30,sort=random,limit=1] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/10.explode_dummy

# リセット
    scoreboard players reset $Interval Temporary
