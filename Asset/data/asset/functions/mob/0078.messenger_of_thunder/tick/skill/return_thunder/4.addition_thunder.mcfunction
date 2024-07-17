#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/4.addition_thunder
#
# 追加で2本召喚する処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/1

# 雷を召喚
    data modify storage api: Argument.ID set value 79
    function api:mob/summon
    execute facing entity @p[distance=..50] feet rotated ~30 ~ run tp @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] add 26.Already

# 雷を召喚
    data modify storage api: Argument.ID set value 79
    function api:mob/summon
    execute facing entity @p[distance=..50] feet rotated ~-30 ~ run tp @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] ~ ~ ~ ~ ~
    tag @e[type=marker,tag=!26.Already,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] add 26.Already
