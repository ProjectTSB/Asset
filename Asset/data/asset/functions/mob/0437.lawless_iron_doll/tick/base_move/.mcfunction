#> asset:mob/0437.lawless_iron_doll/tick/base_move/
#
# 基本動作。攻撃など。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# 行動中じゃないなら、歩行周りの処理を行う
    execute if entity @s[tag=!C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick

# 臆病風エリアを展開する処理
    function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/boarder

# 一定のTickになったら技の発動
    # Normal
        execute if predicate api:global_vars/difficulty/1_normal if score @s[tag=!C5.InAction] General.Mob.Tick matches 40.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/
    # Hard
        execute if predicate api:global_vars/difficulty/2_hard if score @s[tag=!C5.InAction] General.Mob.Tick matches 30.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/
    # Blessless前半戦
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=!C5.InAction,scores={C5.Phase=1}] General.Mob.Tick matches 20.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/
    # Blessless後半戦、技終わった直後に次を放つ
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=!C5.InAction,scores={C5.Phase=2}] General.Mob.Tick matches 0.. if entity @p[distance=..64] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/

# 接触ダメージの処理
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..5] run function asset:mob/0437.lawless_iron_doll/tick/base_move/contact_damage/

# 選択したスキル発動
    execute if entity @s[tag=C5.InAction] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active
