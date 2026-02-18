#> asset:mob/0340.twins_rubiel/tick/app/skill/select/6.3.kt_strong
#
# 使用するスキルを決定する 刀装備 強め・長めかつ怯みチャンスのある攻撃
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt

# ランダム
    execute store result score $Random Temporary run random value 0..2

# プレイヤーが近くにいない場合は掴みを使用しない
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..10] store result score $Random Temporary run random value 0..2
    execute unless entity @a[tag=!PlayerShouldInvulnerable,distance=..10] store result score $Random Temporary run random value 0..1

# 納刀
    execute if score $Random Temporary matches 0 run tag @s add 9G.Skill.Kt.Sheathe
# ワープ連撃
    execute if score $Random Temporary matches 1 run tag @s add 9G.Skill.Kt.Warp
# 掴み
    execute if score $Random Temporary matches 2 run tag @s add 9G.Skill.Kt.Throw.Start

# リセット
    scoreboard players reset $Random Temporary
