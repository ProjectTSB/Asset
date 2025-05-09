#> asset:artifact/0554.catastrophe/damage_entity/3.main
#
# 神器のトリガー処理
#
# @within function asset:artifact/0554.catastrophe/damage_entity/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# 演出
    execute at @e[type=#lib:living,tag=Attacker,distance=..32,limit=1] run particle soul_fire_flame ~ ~1.2 ~ 0.4 0.6 0.4 0 100 force @a
    execute at @e[type=#lib:living,tag=Attacker,distance=..32,limit=1] run playsound minecraft:entity.phantom.death player @a ~ ~ ~ 0.5 0.8
    execute at @e[type=#lib:living,tag=Attacker,distance=..32,limit=1] run playsound minecraft:entity.vex.death player @a ~ ~ ~ 0.5 0.5

# 物理攻撃補正と魔法攻撃補正を取得
    function api:modifier/attack/physical/get
    function api:modifier/attack/magic/get
    execute store result score $Physical Temporary run data get storage api: Return.Attack.Physical 100
    execute store result score $Magic Temporary run data get storage api: Return.Attack.Magic 100

# ダメージ
# 物理魔法の強い方で攻撃する
# 同値の場合は物理優先
    data modify storage api: Argument.Damage set value 80f
    execute if score $Physical Temporary >= $Magic Temporary run data modify storage api: Argument.AttackType set value "Physical"
    execute if score $Physical Temporary < $Magic Temporary run data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Attacker,distance=..32,limit=1] run function api:damage/
    function api:damage/reset

# 破滅の騎士道バフ(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Physical Temporary
    scoreboard players reset $Magic Temporary
