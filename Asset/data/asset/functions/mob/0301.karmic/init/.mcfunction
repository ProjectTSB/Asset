#> asset:mob/0301.karmic/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/301/init


# super.init呼び出し
    function asset:mob/super.init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:karmic/summon {args:{}}
# ノーマル限定でフードを取る
    execute if predicate api:global_vars/difficulty/easy as @e[type=item_display,tag=8D.AJ,sort=nearest,limit=1] run function animated_java:karmic/variants/girl/apply
# tpさせる
    execute at @s as @e[type=item_display,tag=8D.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~
# スコア設定
    scoreboard players set @s General.Mob.Tick -1

# タグつけるやつ。スキルアクティベート内で動く
    tag @s add 8D.Opening
    tag @s add 8D.SkipSkillSelect
