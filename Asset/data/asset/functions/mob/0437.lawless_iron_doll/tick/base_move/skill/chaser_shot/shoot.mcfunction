#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/shoot
#
# 放つ
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/tick

# 基本の数
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon

# 難易度による追加など
    # ハード
        execute if predicate api:global_vars/difficulty/min/2_hard run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 2 1.2
    particle explosion ~ ~ ~ 0.2 0.2 0.2 1 3 force @a[distance=..32]
