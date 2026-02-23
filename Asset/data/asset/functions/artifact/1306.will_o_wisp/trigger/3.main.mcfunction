#> asset:artifact/1306.will_o_wisp/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1306.will_o_wisp/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ターゲット選定
# 何段階かターゲット選択処理をする

# 前方の敵1体をターゲットとする
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1306.will_o_wisp/trigger/target/line_of_sight

# ターゲットがいなければ、前方の近くの敵をターゲットとする
    execute unless entity @e[type=#lib:living_without_player,tag=10A.Target,distance=..10] run function asset:artifact/1306.will_o_wisp/trigger/target/forward/

# ここまでしてターゲットがいなければ前方で演出
    execute unless entity @e[type=#lib:living_without_player,tag=10A.Target,distance=..10] anchored eyes positioned ^ ^-0.5 ^4.5 rotated ~ 0 run function asset:artifact/1306.will_o_wisp/trigger/vfx

# ターゲットにダメージやエフェクト等
    execute as @e[type=#lib:living_without_player,tag=10A.Target,distance=..10] at @s run function asset:artifact/1306.will_o_wisp/trigger/damage_and_effect

# リセット
    data remove storage asset:temp Success
    scoreboard players reset $10A.Recursive Temporary
    tag @e[type=#lib:living_without_player,tag=10A.Target,distance=..10,limit=1] remove 10A.Target
    tag @e[type=#lib:living_without_player,tag=10A.TempTarget,distance=..10] remove 10A.TempTarget
