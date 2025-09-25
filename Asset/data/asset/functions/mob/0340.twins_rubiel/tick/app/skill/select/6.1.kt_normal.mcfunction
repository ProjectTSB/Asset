#> asset:mob/0340.twins_rubiel/tick/app/skill/select/6.1.kt_normal
#
# 使用するスキルを決定する 刀装備 敵との位置関係に応じて攻撃
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt

# 近くにプレイヤーがいる場合は斬り下がり
    execute if entity @a[distance=..5] run tag @s add 9G.Skill.Kt.Doubleslash

# 中くらいの距離にプレイヤーがいる場合は移動斬り
    execute unless entity @s[tag=9G.Skill.Kt.Doubleslash] if entity @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add 9G.Skill.Kt.Moveslash

# それ以外は飛び込み斬り
    execute unless entity @s[tag=9G.Skill.Kt.Doubleslash] unless entity @s[tag=9G.Skill.Kt.Moveslash] run tag @s add 9G.Skill.Kt.JumpSlash
