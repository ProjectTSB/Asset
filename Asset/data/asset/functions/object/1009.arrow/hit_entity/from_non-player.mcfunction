#> asset:object/1009.arrow/hit_entity/from_non-player
#
#
#
# @within function asset:object/1009.arrow/hit_entity/

#> Private
# @private
    #declare tag Hit
    #declare tag Target

# modifier をかける
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# 攻撃対象を確定させる
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @a[dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run tag @s add Hit
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @a[tag=Hit,dx=0,sort=random,limit=1] run tag @s add Target
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @a[tag=Hit,dx=0] remove Hit
# ダメージを与える
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @a[tag=Target,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset
# PostHit メソッド呼び出し
    function asset:object/call.m {method:post_hit}
# リセット
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @a[tag=Target,dx=0] remove Target
