#> asset:object/2053.lastboss_light_pillar_spin/tick/detect_owner.m
#
# 召喚者に対してタグを付与する
#
# @within function asset:object/2053.lastboss_light_pillar_spin/tick/

# ちょうどフィールドに召喚者のUUIDが入ってるのでそれを使う
    $tag @e[type=#lib:living,scores={MobUUID=$(MobUUID)},distance=..32,limit=1] add 2053.Owner
