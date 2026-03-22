#> asset:mob/0456.gargo_ex_machina/tick/util/end_invulnerable
#
# 汎用処理 無敵化解除
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# bossbarの色変更
    execute store result storage asset:temp CO.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage asset:temp CO.Color set value "pink"
    function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_color.m with storage asset:temp CO
    data remove storage asset:temp CO
    execute unless entity @s[tag=CO.IsLatter] run bossbar set asset:co_gem_former color pink

# 全Locator無敵化解除
    execute as @e[type=item_display,tag=CO.ModelRoot] run function animated_java:gargo_ex_machina/as_own_locator_entities {command:'function asset:mob/0456.gargo_ex_machina/tick/util/end_invulnerable_locator'}
