#> asset:artifact/1230.thunder_stiletto/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1230.thunder_stiletto/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.7 0.5
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.7 0.75
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.7 1

# OnGroundを判定
    function api:data_get/on_ground

# 投げる
# OnGround:1bなら確率でJumpBoostをtrueに
    execute if data storage api: {OnGround:1b} if predicate lib:random_pass_per/33 run data modify storage api: Argument.FieldOverride.JumpBoost set value true
    execute anchored eyes positioned ^ ^-0.4 ^ run function asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m {Damage:50,MP:100}

# OnGround:1bならreturn
    execute if data storage api: {OnGround:1b} run return fail

# 2ブロック以上浮いてたら2本追加
    execute if function asset:artifact/1230.thunder_stiletto/trigger/check_foot anchored eyes positioned ^ ^-0.4 ^ rotated ~10 ~ run function asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m {Damage:35,MP:50}
    execute if function asset:artifact/1230.thunder_stiletto/trigger/check_foot anchored eyes positioned ^ ^-0.4 ^ rotated ~-10 ~ run function asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m {Damage:35,MP:50}
