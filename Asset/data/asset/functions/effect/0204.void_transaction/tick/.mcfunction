#> asset:effect/0204.void_transaction/tick/
# @within function asset:effect/0204.void_transaction/_/tick

#> Private
# @private
    #declare score_holder $3O.Tick
    #declare storage asset:effect

# 残り時間を取得
    execute store result score $3O.Tick Temporary run data get storage asset:effect TargetEffect.Duration
# カウントダウン表示
    execute if score $3O.Tick Temporary matches 60 run title @s title {"text":"3","color":"dark_red","bold":true}
    execute if score $3O.Tick Temporary matches 60 run playsound block.ender_chest.open player @s ~ ~ ~ 1.0 0.5
    execute if score $3O.Tick Temporary matches 40 run title @s title {"text":"2","color":"dark_red","bold":true}
    execute if score $3O.Tick Temporary matches 40 run playsound block.ender_chest.open player @s ~ ~ ~ 1.0 0.5
    execute if score $3O.Tick Temporary matches 20 run title @s title {"text":"1","color":"dark_red","bold":true}
    execute if score $3O.Tick Temporary matches 20 run playsound block.ender_chest.open player @s ~ ~ ~ 1.0 0.5

# バニラエフェクトを維持
    effect give @s speed 1 3 true
    effect give @s strength 1 3 true
    effect give @s jump_boost 1 3 true
    effect give @s regeneration 1 3 true
    effect give @s fire_resistance 1 3 true
    effect give @s resistance 1 7 true
    effect give @s invisibility 1 3 true
    effect give @s night_vision 11 3 true
    effect give @s water_breathing 1 3 true
    effect give @s absorption 1 3 true
    effect give @s health_boost 1 3 true
    effect give @s slow_falling 1 3 true

# リセット
    scoreboard players reset $3O.Tick Temporary
