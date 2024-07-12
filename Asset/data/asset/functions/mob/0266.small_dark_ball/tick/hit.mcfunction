#> asset:mob/0266.small_dark_ball/tick/hit
#
# ヒット処理
#
# @within asset:mob/0266.small_dark_ball/tick/move

# ダメージ
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
    function lib:damage/reset

# ヒットタグ
# こうしないと何故かヒット判定が複数発生する(???)
    tag @s add 7E.Hit

# 消滅
    particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.1 10
    kill @s
