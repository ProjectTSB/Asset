#> asset:mob/0412.tiamat/tick/util/start_invulnerable
#
# 汎用処理 無敵化
#
# @within asset:mob/0412.tiamat/tick/event/**

# 全Locatorを無敵化
    execute as @e[type=item_display,tag=BG.ModelRoot] run function animated_java:tiamat_aj/as_own_locator_entities {command:'function asset:mob/0412.tiamat/tick/util/start_invulnerable_invulnerable'}
