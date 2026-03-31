#> asset:object/2245.lawless_whirl_slashshot/tick/detect_owner.m
#
#
#
# @within function asset:object/2245.lawless_whirl_slashshot/tick/

# ちょうどフィールドに召喚者のUUIDが入ってるのでそれを使う
    $tag @e[type=#lib:living,scores={MobUUID=$(MobUUID)},distance=..32,limit=1] add 2245.Owner
