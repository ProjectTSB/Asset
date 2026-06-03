#> asset:mob/0323.mini_elder_guardian/tick/event/attack/reset
#
#
#
# @within function
#   asset:mob/0323.mini_elder_guardian/tick/
#   asset:mob/0323.mini_elder_guardian/tick/event/attack/

# 戦闘モード終了
    data modify storage asset:context this.IsAttackMode set value false

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
