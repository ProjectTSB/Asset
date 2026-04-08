#> asset:mob/0411.behemoth/tick/util/start_invulnerable
#
# 汎用処理 無敵化
#
# @within asset:mob/0411.behemoth/tick/event/**

# 全Locatorを無敵化
    execute as @e[type=item_display,tag=BF.ModelRoot] run function animated_java:behemoth_aj/as_own_locator_entities {command:'function asset:mob/0411.behemoth/tick/util/start_invulnerable_locator'}
