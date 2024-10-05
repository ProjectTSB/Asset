#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/4.dummy_summon
#
# 偽物を召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/3.summon

# 召喚
    data modify storage api: Argument.ID set value 224
    function api:mob/summon
# 拡散値
    data modify storage lib: Argument.Bounds set value [[11d,11d],[0d,0d],[11d,11d]]
# 拡散する
    execute as @e[type=#lib:living,scores={MobID=224},distance=..3,sort=nearest,limit=1] run function lib:spread_entity/
