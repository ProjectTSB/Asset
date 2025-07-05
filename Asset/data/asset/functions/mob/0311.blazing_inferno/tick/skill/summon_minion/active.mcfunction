#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/active
#
# 拡散させてランダムな位置から下っ端が登場
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/

# シレっと方向転換する
    # サウンド
        playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 5 1
        playsound minecraft:block.iron_trapdoor.open hostile @a ~ ~ ~ 5 0.8

    # タグ調整
        # 時計回り→反時計回り
            tag @s[tag=8N.Turn.Clockwise] add 8N.Turn.CounterClockwise
            tag @s[tag=8N.Turn.Clockwise] add 8N.Turn.Wait
            tag @s[tag=8N.Turn.Clockwise] remove 8N.Turn.Clockwise
        # 反時計回り→時計回り
            tag @s[tag=8N.Turn.CounterClockwise,tag=!8N.Turn.Wait] add 8N.Turn.Clockwise
            tag @s[tag=8N.Turn.CounterClockwise,tag=!8N.Turn.Wait] remove 8N.Turn.CounterClockwise
        # 待ちのタグ削除
            tag @s remove 8N.Turn.Wait

# 召喚
    # 常時
        function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/spread
        function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/spread
    # 体力低下時
        execute if entity @s[tag=8N.Health.50Per] run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/spread
    # ハードだと常に+1
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/spread
