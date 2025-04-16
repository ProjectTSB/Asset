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
    function api:modifier/fall_resistance/get

# 表示用に諸々データ処理
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_none.m {Type:"Attack",AttackType:"Physical",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Attack",AttackType:"Physical",ElementType:"Fire",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Attack",AttackType:"Physical",ElementType:"Water",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Attack",AttackType:"Physical",ElementType:"Thunder",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_none.m {Type:"Attack",AttackType:"Magic",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Attack",AttackType:"Magic",ElementType:"Fire",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Attack",AttackType:"Magic",ElementType:"Water",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Attack",AttackType:"Magic",ElementType:"Thunder",IsReverse:false}

    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_none.m {Type:"Defense",AttackType:"Physical",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Defense",AttackType:"Physical",ElementType:"Fire",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Defense",AttackType:"Physical",ElementType:"Water",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Defense",AttackType:"Physical",ElementType:"Thunder",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_none.m {Type:"Defense",AttackType:"Magic",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Defense",AttackType:"Magic",ElementType:"Fire",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Defense",AttackType:"Magic",ElementType:"Water",IsReverse:true}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m {Type:"Defense",AttackType:"Magic",ElementType:"Thunder",IsReverse:true}

    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/other_modifier.m {Type:"Heal",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/other_modifier.m {Type:"ReceiveHeal",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/other_modifier.m {Type:"MPRegen",IsReverse:false}
    function asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/other_modifier.m {Type:"FallResistance",IsReverse:true}

    function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/

# メッセージ表示
    tellraw @p[tag=this] [{"text":"\n[","color":"white"},{"text":"\u0002","font":"space"},{"selector":"@s"},{"text":"\u0002","font":"space"},{"text":"]\n","color":"white"}]
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"攻撃"}]}
    tellraw @p[tag=this] [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Physical.Thunder","interpret":true,"font":"default"}]
    tellraw @p[tag=this] [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Attack.Magic.Thunder","interpret":true,"font":"default"}]
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"耐性"}]}
    tellraw @p[tag=this] [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Physical","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Physical.Thunder","interpret":true,"font":"default"}]
    tellraw @p[tag=this] [{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.None","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.Fire","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.Water","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","interpret":true},{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","interpret":true},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.Defense.Magic.Thunder","interpret":true,"font":"default"}]
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"その他補正"}]}
    tellraw @p[tag=this] [{"text":"与回復量"},{"text":"\u0005","font":"space"},{"storage":"asset:temp","nbt":"01.Heal","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"text":"被回復量"},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.ReceiveHeal","interpret":true,"font":"default"}]
    tellraw @p[tag=this] [{"text":"MP回復量\uE004"},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.MPRegen","interpret":true,"font":"default"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"text":"落下耐性"},{"text":"\u0002","font":"space"},{"storage":"asset:temp","nbt":"01.FallResistance","interpret":true,"font":"default"}]
    tellraw @p[tag=this] {"text":"","extra":[{"text":"\u0002","font":"space"},{"text":"◆"},{"text":"\u0002","font":"space"},{"text":"エフェクト"}]}
    tellraw @p[tag=this] {"storage":"asset:temp","nbt":"01.EffectMessages[]","interpret":true,"separator":"\n"}
