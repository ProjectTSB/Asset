#> asset:object/2082.storm_shadow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2082/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

#方向転換
#加速
#命中判定
function asset:object/super.tick
#テンプレートからオブジェクト->テンプレート->メソッド->detect_hit_entity
#攻撃
#テンプレートからオブジェクト->テンプレート->メソッド->hit_entity
