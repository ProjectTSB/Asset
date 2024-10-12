#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main
#
# 巨大カボチャ転がし2のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# このmcfのコマンド全てはスポーンマーカーの位置で実行される

# スポーンマーカーを中心として巨大カボチャを召喚


# 網目状にカボチャを転がす
# ノーマルなら1面ずつ転がす
# ハード以上なら2面ずつ転がす

    # ノーマル
    # 0tick目に配列を初期化し、2回転がす
        execute if entity @s[scores={1N.Tick=0}] if predicate api:global_vars/difficulty/max/normal run data modify storage asset:context this.List set value [0,1,2,3]
        execute if entity @s[scores={1N.Tick=0}] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_cross
        execute if entity @s[scores={1N.Tick=50}] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_cross

    # ハード
        execute if entity @s[scores={1N.Tick=0..50}] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/3.select_cross_hard

# ハード以上なら70tickまで飛ばす
    execute if entity @s[scores={1N.Tick=50}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Tick 70

# 直線に並んだやつを転がす
    execute if entity @s[scores={1N.Tick=130}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/3.select_line

# 直線に並んでるけど、1つだけ空いてるやつを転がす
    execute if entity @s[scores={1N.Tick=200}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/4.select_line_with_space

# リセット
    execute if entity @s[scores={1N.Tick=180..}] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/reset
    execute if entity @s[scores={1N.Tick=250..}] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/reset
