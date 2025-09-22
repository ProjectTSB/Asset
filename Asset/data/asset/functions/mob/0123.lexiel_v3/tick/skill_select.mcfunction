#> asset:mob/0123.lexiel_v3/tick/skill_select
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "3F.Skill"
    data modify storage lib: Args.max set value 3
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# トグル式に+10を仕込む。これは剣攻撃と魔法攻撃を交互に繰り返すための処理。あとから技追加する時しんどそうだけどな！ガハハ！
    execute if entity @s[tag=3F.SkillEven] run scoreboard players add $Random Temporary 10

# デバッグスキル固定
    #scoreboard players set $Random Temporary 12

# スキル選択(スキルによってはプレイヤー距離で変わる。剣スキル1は近距離じゃないと使わない、剣スキル3は遠距離じゃないと鬱陶しいので使わない。魔法3スキルは中距離にいないと使わない)
    execute if score $Random Temporary matches 0 if entity @p[gamemode=!spectator,distance=..4] run tag @s add 3F.SkillSword1
    execute if score $Random Temporary matches 0 unless entity @p[gamemode=!spectator,distance=..4] run tag @s add 3F.SkillSword2
    execute if score $Random Temporary matches 1 run tag @s add 3F.SkillSword2
    execute if score $Random Temporary matches 2 if entity @p[gamemode=!spectator,distance=..5] run tag @s add 3F.SkillSword1
    execute if score $Random Temporary matches 2 unless entity @p[gamemode=!spectator,distance=..5] run tag @s add 3F.SkillSword3

    execute if score $Random Temporary matches 10 run tag @s add 3F.SkillMagic1
    execute if score $Random Temporary matches 11 run tag @s add 3F.SkillMagic2
    execute if score $Random Temporary matches 12 if entity @p[gamemode=!spectator,distance=..7] run tag @s add 3F.SkillMagic3
    execute if score $Random Temporary matches 12 unless entity @p[gamemode=!spectator,distance=..7] run tag @s add 3F.SkillMagic2

# スキルIDが10以下の時、タグ消す
    execute if score $Random Temporary matches 10.. if entity @s[gamemode=!spectator,tag=3F.SkillEven] run tag @s remove 3F.SkillEven
# スキルIDが9以下の場合、タグ付ける
    execute if score $Random Temporary matches ..9 run tag @s add 3F.SkillEven


# リセット
    scoreboard players reset $Random Temporary
