#> asset:mob/0410.heiloang/tick/util/start_invulnerable
#
# 汎用処理 無敵化
#
# @within asset:mob/0410.heiloang/tick/**

# 全Locatorを無敵化
    execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/tick/util/start_invulnerable_locator'}
