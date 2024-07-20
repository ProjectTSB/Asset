#> asset:mob/0371.ice_spellbook/tick/3.summon
#
# 攻撃
#
# @within function asset:mob/0371.ice_spellbook/tick/2.ready

# 弾を召喚
    data modify storage api: Argument.ID set value 372
    function api:mob/summon

# プレイヤーの方向かつ斜め45°に向かせる
    execute facing entity @p feet run tp @e[type=marker,scores={MobID=372},distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ 45

# リセット
    function asset:mob/0371.ice_spellbook/tick/4.reset
