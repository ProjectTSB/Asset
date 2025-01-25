#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/set_target
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/

# 対象決定
    tag @a[distance=..80,sort=random,limit=3] add BF.FlareTarget
    # tag @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=3] add BF.FlareTarget

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2181
    function api:object/summon

    data modify storage api: Argument.ID set value 2181
    function api:object/summon
