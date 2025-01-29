#> asset:artifact/0952.lunatic_rod/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/952/click/

# 音
    playsound block.portal.travel player @a ~ ~ ~ 0.05 2
    playsound item.trident.return player @a ~ ~ ~ 0.6 0.8
    playsound item.trident.return player @a ~ ~ ~ 0.6 2
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 2
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.4 2
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.4

# 発射
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0952.lunatic_rod/click/4.recursive

# ヒットした対象にダメージ distance=..40なのは広めに判定をとっているため
    data modify storage api: Argument.Damage set value 300.0f
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Hit,distance=..15] run function api:damage/
    function api:damage/reset

# ヒットしたら魔法攻撃バフ
    execute if entity @s[tag=Landing] run data modify storage api: Argument.ID set value 212
    execute if entity @s[tag=Landing] run function api:entity/mob/effect/give
    execute if entity @s[tag=Landing] run function api:entity/mob/effect/reset

# 再帰処理のリセット
    tag @e[type=#lib:living,tag=Hit,distance=..15] remove Hit
    tag @s remove Landing
    scoreboard players reset $Interval Temporary
