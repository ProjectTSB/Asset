#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/shoot
#
# こちらはメインのレーザー。超正確無比な狙いなので壁に隠れないと避けれない。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick

# サウンド
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 1 2

# 見た目レーザーと判定レーザーを召喚
    execute positioned ~ ~1.5 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/recursive
    execute positioned ~ ~1.5 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/visual_laser
