#> asset:artifact/1413.lighter/trigger/attack
#
# 中心の敵に火柱を発生させ、中心と周囲の敵に魔法攻撃を行う
#
# @within function asset:artifact/1413.lighter/trigger/3.main

# 演出
    function asset:artifact/1413.lighter/trigger/vfx
# 延焼の音は対象の数に関わらず1回だけ鳴らす
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=0.01..4] run playsound block.fire.ambient player @a ~ ~ ~ 0.4 1.4 0

# 追加当たり判定から同じ本体へ重ねてダメージを与えないよう、セッションを開く
    function api:damage/single_damage_session/open

# 中心の敵へのダメージ
    data modify storage api: Argument.Damage set value 50f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 周囲の敵へのダメージ (distance=0.01.. で中心の敵自身を除く)
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=0.01..4] at @s run function asset:artifact/1413.lighter/trigger/splash_damage
    function api:damage/single_damage_session/close
