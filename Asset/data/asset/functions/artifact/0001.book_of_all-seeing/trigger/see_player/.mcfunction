#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/3.main

# 補正値を取得
    function api:modifier/attack/base/get
    function api:modifier/attack/physical/get
    function api:modifier/attack/magic/get
    function api:modifier/attack/fire/get
    function api:modifier/attack/water/get
    function api:modifier/attack/thunder/get

    function api:modifier/defense/base/get
    function api:modifier/defense/physical/get
    function api:modifier/defense/magic/get
    function api:modifier/defense/fire/get
    function api:modifier/defense/water/get
    function api:modifier/defense/thunder/get

    function api:modifier/heal/get
    function api:modifier/receive_heal/get
    function api:modifier/mp_regen/get

# doubleから(int)%の形に直す
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Attack.Base"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Attack.Physical"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Attack.Magic"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Attack.Fire"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Attack.Water"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Attack.Thunder"}

    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m {Type:"Defense.Base"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m {Type:"Defense.Physical"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m {Type:"Defense.Magic"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m {Type:"Defense.Fire"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m {Type:"Defense.Water"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/reverse.m {Type:"Defense.Thunder"}

    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Heal"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"ReceiveHeal"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"MPRegen"}

# メッセージ表示
    tellraw @s [{"text":"攻撃 ("},{"storage":"asset:temp","nbt":"01.Attack.Base"},{"text":")"}]
    tellraw @s [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Thunder","interpret":true,"font":"default"}]
    tellraw @s [{"text":"耐性 ("},{"storage":"asset:temp","nbt":"01.Defense.Base"},{"text":")"}]
    tellraw @s [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Thunder","interpret":true,"font":"default"}]

# リセット
    scoreboard players reset $01.Temp Temporary
    data remove storage asset:temp 01
