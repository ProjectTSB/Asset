#> asset:mob/0437.lawless_iron_doll/tick/base_move/
#
# 基本動作。攻撃など。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# 行動中じゃないなら、歩行周りの処理を行う
    execute if entity @s[tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick

# 臆病風エリア！
    function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/boarder

# 一定のTickになったら技の発動
    # Normal
        execute if predicate api:global_vars/difficulty/easy if score @s[tag=!C5.InAction] General.Mob.Tick matches 30.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/
    # Hard
        execute if predicate api:global_vars/difficulty/normal if score @s[tag=!C5.InAction] General.Mob.Tick matches 20.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/
    # Blessless: 技を撃ち終わったら即座に次を撃つ。
        execute if predicate api:global_vars/difficulty/hard if score @s[tag=!C5.InAction] General.Mob.Tick matches 0.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/

# 接触ダメージの処理
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..5] run function asset:mob/0437.lawless_iron_doll/tick/base_move/contact_damage/

# 選択したスキル発動
    execute if entity @s[tag=C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active
