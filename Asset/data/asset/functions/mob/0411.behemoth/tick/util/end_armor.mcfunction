#> asset:mob/0411.behemoth/tick/util/end_armor
#
# 汎用処理 アーマー解除
#
# @within asset:mob/0411.behemoth/tick/event/**

# 全Locator無敵化解除
    execute as @e[type=item_display,tag=BG.ModelRoot] run function animated_java:behemoth_aj/as_own_locator_entities {command:'function asset:mob/0411.behemoth/tick/util/end_armor_locator'}
