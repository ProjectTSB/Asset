#> asset:mob/0412.tiamat/tick/util/end_invulnerable
#
# 汎用処理 無敵化解除
#
# @within asset:mob/0412.tiamat/tick/event/**

# 全Locator無敵化解除
    execute as @e[type=item_display,tag=BG.ModelRoot] run function animated_java:tiamat_aj/as_own_locator_entities {command:'function asset:mob/0412.tiamat/tick/util/end_invulnerable_locator'}
