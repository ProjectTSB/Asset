#> asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage_on_ground
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage

# OnGround取得
    function api:data_get/on_ground
# ダメージ
    execute if data storage api: {OnGround:1b} if entity @s[tag=!PlayerShouldInvulnerable] run function lib:damage/

# 上に飛ばす
    execute if data storage api: {OnGround:1b} run function asset:mob/0377.grey_guardian_v2/tick/04.axe2/levitation
