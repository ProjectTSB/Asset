#> asset:artifact/0952.lunatic_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0952.lunatic_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 音
    playsound block.portal.travel player @a ~ ~ ~ 0.05 2
    playsound item.trident.return player @a ~ ~ ~ 0.6 0.8
    playsound item.trident.return player @a ~ ~ ~ 0.6 2
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 2
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.4 2
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.4

# 発射
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0952.lunatic_rod/trigger/4.recursive

# ヒットした対象にダメージ distance=..40なのは広めに判定をとっているため
    data modify storage api: Argument.Damage set value 200.0f
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
