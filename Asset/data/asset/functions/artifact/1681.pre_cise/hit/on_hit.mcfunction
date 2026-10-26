#> asset:artifact/1681.pre_cise/hit/on_hit
#
# 命中した的を1つ消して、新しい的を1つ召喚する
# 狙う敵がいれば敵の方向を基準にした的を、いなければ画面中央の的を召喚する
#
# @input as player at player
# @within function asset:artifact/1681.pre_cise/trigger/3.main

# 演出
    execute at @e[type=item_display,tag=PreCise.Hit,distance=..8,limit=1] run particle crit ~ ~ ~ 0.2 0.2 0.2 0.3 20
    playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 1.5

# 命中した的を1つ消す
    kill @e[type=item_display,tag=PreCise.Hit,distance=..8,limit=1]
    tag @e[type=item_display,tag=PreCise.Hit,distance=..8] remove PreCise.Hit

# 新しい的を召喚する
    execute if score @s 1AP.AimMobUUID matches 0.. run function asset:artifact/1681.pre_cise/target/summon_normal_target
    execute unless score @s 1AP.AimMobUUID matches 0.. run function asset:artifact/1681.pre_cise/target/summon_center_target
