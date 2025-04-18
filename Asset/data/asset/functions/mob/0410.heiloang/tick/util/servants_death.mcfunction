#> asset:mob/0410.heiloang/tick/util/servants_death
#
# 汎用処理 眷属討伐時
#
# @within
#    function asset:mob/0411.behemoth/death/
#    function asset:mob/0412.tiamat/death/

# 一時的に無敵解除
    function asset:mob/0410.heiloang/tick/util/end_invulnerable

# 割合ダメージ
    function asset:mob/0410.heiloang/tick/util/servants_death_selfdamage

# 無敵再開
    function asset:mob/0410.heiloang/tick/util/start_invulnerable

# 眷属が両方倒された場合、怯み
# 連携技の最中は優先してキャンセルを使用する
    execute if entity @s[tag=BE.State.BehemothDeath,tag=BE.State.TiamatDeath,tag=!BE.Skill.OfferingEnd] run function asset:mob/0410.heiloang/tick/util/servants_death_damage

# フェーズ3かつ時間切れ以外の場合、ソウルオファリング開始
    execute if score @s BE.Phase matches 2 if score @s BE.ActCount matches ..11 run function asset:mob/0410.heiloang/tick/util/servants_death_offering

# 連携技の最中の場合、行動をキャンセル
    execute if entity @s[tag=BE.Skill.Ter.Succ.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Succ.A] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Succ.B] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Succ.Dive] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Dis.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Dis] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig.A] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig.B] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Alig] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Purg.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Purg] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Rag.Start] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
    execute if entity @s[tag=BE.Skill.Ter.Rag] run return run function asset:mob/0410.heiloang/tick/util/servants_death_interrupt
