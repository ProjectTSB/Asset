#> asset:mob/0369.prominence_spellbook/tick/3.summon
#
#
#
# @within function asset:mob/0369.prominence_spellbook/tick/2.ready

# 弾を召喚
    data modify storage api: Argument.ID set value 370
    function api:mob/summon

# プレイヤーの方向に向かせる
    execute facing entity @p feet run tp @e[type=marker,scores={MobID=370},distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ ~

# リセット
    function asset:mob/0369.prominence_spellbook/tick/4.reset
