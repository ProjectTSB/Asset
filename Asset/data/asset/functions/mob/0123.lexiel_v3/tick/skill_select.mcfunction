#> asset:mob/0123.lexiel_v3/tick/skill_select
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/

# ランダム
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# トグル式に+10を仕込む。これは剣攻撃と魔法攻撃を交互に繰り返すための処理。あとから技追加する時しんどそうだけどな！ガハハ！
    execute if entity @s[tag=3F.SkillEven] run scoreboard players add $Random Temporary 10

# デバッグスキル固定
    scoreboard players set $Random Temporary 11
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 3F.SkillSword1
    execute if score $Random Temporary matches 1 run tag @s add 3F.SkillSword2
    execute if score $Random Temporary matches 2 run tag @s add 3F.SkillSword3

    execute if score $Random Temporary matches 10 run tag @s add 3F.SkillMagic1
    execute if score $Random Temporary matches 11 run tag @s add 3F.SkillMagic2
    execute if score $Random Temporary matches 12 run tag @s add 3F.SkillMagic3

# リセット
    scoreboard players reset $Random Temporary
