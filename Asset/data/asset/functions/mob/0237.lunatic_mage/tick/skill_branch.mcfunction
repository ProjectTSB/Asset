#> asset:mob/0237.lunatic_mage/tick/skill_branch
#
# 各スキルの技のfunctionに分岐します
#
# @within function asset:mob/0237.lunatic_mage/tick/

# 火
    execute if entity @s[tag=6L.Fire] run function asset:mob/0237.lunatic_mage/tick/skill/fire/

# 火2
    execute if entity @s[tag=6L.Fire2] run function asset:mob/0237.lunatic_mage/tick/skill/fire2/

# 水
    execute if entity @s[tag=6L.Water] run function asset:mob/0237.lunatic_mage/tick/skill/water/

# 雷
    execute if entity @s[tag=6L.Thunder] run function asset:mob/0237.lunatic_mage/tick/skill/thunder/

# 無
    execute if entity @s[tag=6L.Magic] run function asset:mob/0237.lunatic_mage/tick/skill/magic/

# エレメントコンファイン
    execute if entity @s[tag=6L.ElementalConfine] run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/
