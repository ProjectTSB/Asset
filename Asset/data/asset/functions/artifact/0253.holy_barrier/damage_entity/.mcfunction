#> asset:artifact/0253.holy_barrier/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/253/damage_entity/

#> prv
# @private
    #declare tag 71.Target

# 攻撃対象にタグ付け
    tag @e[type=#lib:living,tag=!Enemy.Boss,tag=!Uninterferable,predicate=asset:artifact/0253.holy_barrier/is_angry] add 71.Target

# 音
    playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1 1 1
    playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 1.2 1

# particle
    execute anchored eyes rotated ~ 0 positioned ^ ^ ^0.2 run function asset:artifact/0253.holy_barrier/damage_entity/3.1.particle_barrier
    execute at @e[type=#lib:living,tag=71.Target] run function asset:artifact/0253.holy_barrier/damage_entity/3.2.particle_reflect

# 敵を破壊する
    execute as @e[type=#lib:living,tag=71.Target] run function api:mob/kill
