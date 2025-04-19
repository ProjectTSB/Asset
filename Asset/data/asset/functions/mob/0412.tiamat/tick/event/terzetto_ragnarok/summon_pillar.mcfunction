#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_pillar
#
# テルツェット・ラグナレク
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 氷柱設置
# 放電攻撃のため、UUIDはヘイローンのものを指定
    data modify storage api: Argument.ID set value 2180
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    function api:object/summon

# 終了
    kill @s
