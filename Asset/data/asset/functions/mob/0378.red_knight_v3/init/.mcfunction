#> asset:mob/0378.red_knight_v3/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/378/init

# 抽象
    function asset:mob/super.init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:red_knight/summon {args:{}}

# tpさせる
    execute at @s as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~
# スコア設定
    scoreboard players set @s AI.Tick -1

# タグつけるやつ。スキルアクティベート内で動く
    tag @s add AI.Opening
