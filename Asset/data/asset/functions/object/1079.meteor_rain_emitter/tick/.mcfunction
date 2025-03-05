#> asset:object/1079.meteor_rain_emitter/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1079/tick

#> インターバル
#@private
    # declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ここは熱いですよ感を出す
    particle lava ~ ~ ~ 10 10 10 0 1
    particle large_smoke ~ ~ ~ 10 10 10 0 1

# ダメージ、数Tickおきに実行
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 10tickおきに実行
        scoreboard players operation $Interval Temporary %= $10 Const
    # ダメージ実行
        execute if score $Interval Temporary matches 0 positioned ~ ~40 ~ run function asset:object/1079.meteor_rain_emitter/tick/summon_meteor
        execute if score $Interval Temporary matches 0 positioned ~ ~40 ~ run function asset:object/1079.meteor_rain_emitter/tick/summon_meteor
        execute if score $Interval Temporary matches 0 positioned ~ ~40 ~ run function asset:object/1079.meteor_rain_emitter/tick/summon_meteor
# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
