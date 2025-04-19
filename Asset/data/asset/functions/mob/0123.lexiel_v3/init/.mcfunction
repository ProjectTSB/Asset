#> asset:mob/0123.lexiel_v3/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/123/init

    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_lexiel",Active:true}]
    function asset:datapack/set_activation_state

function asset:mob/super.init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:lexiel/summon {args:{}}

# tpさせる
    execute at @s as @e[type=item_display,tag=3F.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~
# スコア設定
    scoreboard players set @s General.Mob.Tick -1

# タグつけるやつ。スキルアクティベート内で動く
    tag @s add 3F.Opening
