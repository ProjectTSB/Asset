#> asset:mob/0237.lunatic_mage/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/237/tick

# パーティクル
    particle minecraft:falling_dust black_concrete ~ ~0.5 ~ 0.1 0 0.1 0 1

# HP減少時のパーティクル
    execute if entity @s[tag=6L.HealthLess40Per] run particle minecraft:instant_effect ~ ~1 ~ 0.3 0.5 0.3 0 1

# 技決定
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0237.lunatic_mage/tick/select_skill

# 技
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0237.lunatic_mage/tick/skill_branch

# スコア
    scoreboard players add @s General.Mob.Tick 1

# Yのrotationを0で固定
    data modify entity @s Rotation[1] set value 0f

# カスタム透明化
    scoreboard players remove @s[scores={6L.Invisible=0..}] 6L.Invisible 1
    item replace entity @s[scores={6L.Invisible=0}] armor.head with minecraft:stick{CustomModelData:20198}
    scoreboard players reset @s[scores={6L.Invisible=0}] 6L.Invisible
