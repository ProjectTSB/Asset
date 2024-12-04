#> asset:artifact/0554.catastrophe/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/554/damage_entity/

# 演出
    execute at @e[type=#lib:living,tag=Attacker,limit=1] run particle soul_fire_flame ~ ~0.5 ~ 0.4 0.6 0.4 0 100 force @a

# ダメージ
    data modify storage lib: Argument set value {Damage:600,AttackType:Magic,ElementType:None,FixedDamage:false}
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Attacker,limit=1] run function lib:damage/

# リセット
    function lib:damage/reset
