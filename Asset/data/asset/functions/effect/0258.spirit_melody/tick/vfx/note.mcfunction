#> asset:effect/0258.spirit_melody/tick/vfx/note
#
# ランダムな位置にnoteを表示する
#
# @within function asset:effect/0258.spirit_melody/tick/

#> Private
# @private
    #declare tag Random

# 拡散
    data modify storage lib: Argument.Bounds set value [[6.5d,6.5d],[0d,2d],[6.5d,6.5d]]
    function lib:spread_entity/

# 50%でRandomタグを付与
    execute if predicate lib:random_pass_per/50 run tag @s add Random

# noteパーティクル
    execute if entity @s[tag=Random] at @s run particle note ~ ~ ~ 1.6 0 0 0.5 0 normal @a
    execute if entity @s[tag=!Random] at @s run particle note ~ ~ ~ 0 0 0 0 0 normal @a

# 消滅
    kill @s
