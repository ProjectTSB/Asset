#> asset:artifact/1413.lighter/trigger/attack
#
# 火柱を発生させ、中心と周囲の敵に魔法攻撃を行う
#
# @within function asset:artifact/1413.lighter/trigger/3.main

# 演出
    particle flame ~ ~0.1 ~ 0.4 2.0 0.4 0.03 70 normal @a
    particle flame ~ ~1.0 ~ 0.5 0.3 0.5 0.02 25 normal @a

    particle smoke ~ ~0.1 ~ 0.4 1.8 0.4 0.02 35 normal @a
    particle lava ~ ~0.1 ~ 0.3 0.2 0.3 0.01 4 normal @a

    playsound item.firecharge.use player @a ~ ~ ~ 0.8 0.8 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1.0 0

# 追加当たり判定から同じ本体へ重ねてダメージを与えないよう、セッションを開く
    function api:damage/single_damage_session/open

# 狙った敵へのダメージ
    data modify storage api: Argument.Damage set value 50f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=139.MainTarget,distance=..4,limit=1] run function api:damage/
    function api:damage/reset

# 周囲の敵へのダメージ
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!139.MainTarget,tag=!Uninterferable,distance=..4] run function asset:artifact/1413.lighter/trigger/splash_damage
    function api:damage/single_damage_session/close
