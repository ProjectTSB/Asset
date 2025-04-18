#> asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/
#
# 実行者の情報を表示
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/3.main

#> Val
# @private
    #declare score_holder $01.MaxHP
    #declare score_holder $01.CurrentHP
    #declare score_holder $01.PercentHP

# VFX
    execute at @s run particle minecraft:enchant ~ ~1 ~ 0.2 0.5 0.2 0 100
    execute at @s run particle minecraft:instant_effect ~ ~1 ~ 0.2 0.5 0.2 0 5

# 名前
    tellraw @p[tag=this] [{"text":"\n[","color":"white"},{"text":"\u0002","font":"space"},{"selector":"@s"},{"text":"\u0002","font":"space"},{"text":"]\n","color":"white"}]

# Lore
    function api:mob/lore/get
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"詳細情報"}]}
    execute if data storage api: Return.Lore run tellraw @p[tag=this] {"storage":"api:","nbt":"Return.Lore[]","interpret":true,"separator":"\n"}
    execute unless data storage api: Return.Lore run tellraw @p[tag=this] {"text":"詳細不明","color":"gray"}

# 体力
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"体力"}]}
    function api:mob/get_health_percent
    execute store result storage asset:temp 01.Args.HealthPer int 1 run data get storage api: Return.HealthPer 100
    execute if entity @s[tag=!Enemy.Boss,tag=!Uninterferable] run function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/print_health_line/
    execute if entity @s[tag= Enemy.Boss,tag=!Uninterferable] run tellraw @p[tag=this] {"text":"","extra":[{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"text":"♡","font":"artifact/1/info"},{"text":"\u0002","font":"space"},{"text":"???"},{"text":"\u0002","font":"space"},{"text":"/"},{"text":"\u0002","font":"space"},{"text":"???"},{"text":" ("},{"storage":"asset:temp","nbt":"01.Args.HealthPer"},{"text":"%)"}]}

# 物理耐性取得
    function api:modifier/defense/physical/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Physical
    function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/get_defense_info
    data modify storage asset:temp 01.PhysicalDefense set from storage asset:temp 01.Def
    data remove storage asset:temp 01.Def
# 魔法耐性取得
    function api:modifier/defense/magic/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Magic
    function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/get_defense_info
    data modify storage asset:temp 01.MagicDefense set from storage asset:temp 01.Def
    data remove storage asset:temp 01.Def
# 炎耐性取得
    function api:modifier/defense/fire/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Fire
    function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/get_defense_info
    data modify storage asset:temp 01.FireDefense set from storage asset:temp 01.Def
    data remove storage asset:temp 01.Def
# 水耐性取得
    function api:modifier/defense/water/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Water
    function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/get_defense_info
    data modify storage asset:temp 01.WaterDefense set from storage asset:temp 01.Def
    data remove storage asset:temp 01.Def
# 雷耐性取得
    function api:modifier/defense/thunder/get
    data modify storage asset:temp 01.Def set from storage api: Return.Defense.Thunder
    function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/get_defense_info
    data modify storage asset:temp 01.ThunderDefense set from storage asset:temp 01.Def
    data remove storage asset:temp 01.Def

# 耐性表示
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"弱点"},{"text":"["},{"text":"+","font":"artifact/1/info"},{"text":"]"},{"text":"\u0002","font":"space"},{"text":"/"},{"text":"\u0002","font":"space"},{"text":"耐性"},{"text":"["},{"text":"-","font":"artifact/1/info"},{"text":"]"}]}
    tellraw @p[tag=this] [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"asset:temp","nbt":"01.PhysicalDefense","interpret":true},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"asset:temp","nbt":"01.MagicDefense","interpret":true}]
    tellraw @p[tag=this] [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"storage":"asset:temp","nbt":"01.FireDefense","interpret":true},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"storage":"asset:temp","nbt":"01.WaterDefense","interpret":true},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"storage":"asset:temp","nbt":"01.ThunderDefense","interpret":true}]

# エフェクト
    function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"エフェクト"}]}
    execute unless data storage asset:temp 01.EffectMessages[0] run tellraw @p[tag=this] [{"text":"付与無し"}]
    execute if data storage asset:temp 01.EffectMessages[0] run tellraw @p[tag=this] [{"storage":"asset:temp","nbt":"01.EffectMessages[]","interpret":true,"separator":"\n"}]

# リセット
    scoreboard players reset $01.CurrentHP Temporary
    scoreboard players reset $01.MaxHP Temporary
    scoreboard players reset $01.PercentHP Temporary
