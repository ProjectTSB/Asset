#> asset:mob/0411.behemoth/tick/util/end_invulnerable
#
# 汎用処理 無敵化解除
#
# @within asset:mob/0411.behemoth/tick/event/**

# 全Locator無敵化解除
    execute as @e[type=item_display,tag=BF.ModelRoot] run function animated_java:behemoth_aj/as_own_locator_entities {command:'function asset:mob/0411.behemoth/tick/util/end_invulnerable_locator'}
