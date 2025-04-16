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
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/none/m {Type:"Attack",AttackType:"Physical"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m {Type:"Attack",AttackType:"Physical",ElementType:"Fire"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m {Type:"Attack",AttackType:"Physical",ElementType:"Water"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m {Type:"Attack",AttackType:"Physical",ElementType:"Thunder"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/none/m {Type:"Attack",AttackType:"Magic"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m {Type:"Attack",AttackType:"Magic",ElementType:"Fire"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m {Type:"Attack",AttackType:"Magic",ElementType:"Water"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/m {Type:"Attack",AttackType:"Magic",ElementType:"Thunder"}

    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/none/reverse.m {Type:"Defense",AttackType:"Physical"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/reverse.m {Type:"Defense",AttackType:"Physical",ElementType:"Fire"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/reverse.m {Type:"Defense",AttackType:"Physical",ElementType:"Water"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/reverse.m {Type:"Defense",AttackType:"Physical",ElementType:"Thunder"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/none/reverse.m {Type:"Defense",AttackType:"Magic"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/reverse.m {Type:"Defense",AttackType:"Magic",ElementType:"Fire"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/reverse.m {Type:"Defense",AttackType:"Magic",ElementType:"Water"}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/elements/other/reverse.m {Type:"Defense",AttackType:"Magic",ElementType:"Thunder"}

    #tellraw @s {"storage":"asset:temp","nbt":"01.Defense.Physical"}
    #tellraw @s {"storage":"asset:temp","nbt":"01.Defense.Magic"}


    #function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"Heal"}
    #function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"ReceiveHeal"}
    #function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/modifier_per/m {Type:"MPRegen"}

# メッセージ表示
    tellraw @s [{"text":"\n[ ","color":"white"},{"selector":"@s"},{"text":" ]\n","color":"white"}]
    tellraw @s [{"text":"攻撃"}]
    tellraw @s [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.Thunder","interpret":true,"font":"default"}]
    tellraw @s [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.Thunder","interpret":true,"font":"default"}]
    tellraw @s [{"text":"耐性"}]
    tellraw @s [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.Thunder","interpret":true,"font":"default"}]
    tellraw @s [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.Thunder","interpret":true,"font":"default"}]

# リセット
    scoreboard players reset $01.Temp Temporary
    data remove storage asset:temp 01
