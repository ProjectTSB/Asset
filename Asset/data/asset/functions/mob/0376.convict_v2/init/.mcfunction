#> asset:mob/0376.convict_v2/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/376/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_convict",Active:true}]
    function asset:datapack/set_activation_state

# super.init呼び出し
    function asset:mob/super.init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:convict/summon {args:{}}

# tpさせる
    execute at @s as @e[type=item_display,tag=AG.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~
# スコア設定
    scoreboard players set @s General.Mob.Tick -1

# タグつけるやつ。スキルアクティベート内で動く
    tag @s add AG.Opening
