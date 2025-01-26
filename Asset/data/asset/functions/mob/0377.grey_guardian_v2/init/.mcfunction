#> asset:mob/0377.grey_guardian_v2/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/377/init

function asset:mob/super.init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:grey_guardian/summon {args:{}}

# tpさせる
    execute at @s as @e[type=item_display,tag=AH.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~
# スコア設定
    scoreboard players set @s AH.Tick -1

# タグつけるやつ。スキルアクティベート内で動く
    tag @s add AH.Opening
