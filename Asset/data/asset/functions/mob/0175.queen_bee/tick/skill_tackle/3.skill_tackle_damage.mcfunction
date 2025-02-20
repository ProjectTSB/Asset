#> asset:mob/0175.queen_bee/tick/skill_tackle/3.skill_tackle_damage
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle

# ダメージ判定
# 与えるダメージ
    data modify storage api: Argument.Damage set value 50.0f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
# リセット
    function api:damage/reset

# プレイヤーにダメージを与えたらタグを付与
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 4V.SkillTackleDamageHit
