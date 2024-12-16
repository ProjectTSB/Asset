#> asset:mob/0410.heiloang/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0410.heiloang/tick/

# ヘルファイア
    execute if entity @s[tag=BE.Skill.Hellfire] run function asset:mob/0410.heiloang/tick/event/hellfire/

# アダマントスパイク
    execute if entity @s[tag=BE.Skill.Adamant] run function asset:mob/0410.heiloang/tick/event/adamant_spike/

# リヒトブリッツェン
    execute if entity @s[tag=BE.Skill.Blitz] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/

# エンハンスドディザスター
    execute if entity @s[tag=BE.Skill.Ehd] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# 移動
    execute if entity @s[tag=BE.Skill.Move] run function asset:mob/0410.heiloang/tick/event/move/
    execute if entity @s[tag=BE.Skill.MoveAfterEhd] run function asset:mob/0410.heiloang/tick/event/move_after_ehd/

# 竜巻
    execute if entity @s[tag=BE.Skill.Tornado] run function asset:mob/0410.heiloang/tick/event/tornado/
# なぎはらい火炎放射
    execute if entity @s[tag=BE.Skill.Sweep] run function asset:mob/0410.heiloang/tick/event/sweep/

# テンペスト
    execute if entity @s[tag=BE.Skill.Tempest] run function asset:mob/0410.heiloang/tick/event/tempest/

# ヘイルディザスター
    execute if entity @s[tag=BE.Skill.HeilDisaster] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0410.heiloang/tick/event/heil_disaster/
    execute if entity @s[tag=BE.Skill.HeilDisaster] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# フレア
    execute if entity @s[tag=BE.Skill.Flare] run function asset:mob/0410.heiloang/tick/event/flare/

# 急降下
    execute if entity @s[tag=BE.Skill.Plamet] run function asset:mob/0410.heiloang/tick/event/plamet/

# インパルス
