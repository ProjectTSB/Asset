#> asset:mob/0410.heiloang/tick/util/end_invulnerable
#
# 汎用処理 無敵化解除
#
# @within asset:mob/0410.heiloang/tick/**

# bossbarの色変更
    execute store result storage asset:temp BE.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage asset:temp BE.Color set value "pink"
    function asset:mob/0410.heiloang/tick/util/change_bossbar_color.m with storage asset:temp BE
    data remove storage asset:temp BE

# 全Locator無敵化解除
    execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/tick/util/end_invulnerable_locator'}
