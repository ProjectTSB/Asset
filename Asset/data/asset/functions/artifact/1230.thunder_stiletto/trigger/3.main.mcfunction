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

# 投げる
    execute anchored eyes positioned ^ ^-0.4 ^ run function asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m {Damage:160}

# OnGroundを判定
    function api:data_get/on_ground

# OnGround:1bならreturn
    execute if data storage api: {OnGround:1b} run return fail

# 2ブロック以上浮いてたら2本追加
    execute if function asset:artifact/1230.thunder_stiletto/trigger/check_foot anchored eyes positioned ^ ^-0.4 ^ rotated ~10 ~ run function asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m {Damage:100}
    execute if function asset:artifact/1230.thunder_stiletto/trigger/check_foot anchored eyes positioned ^ ^-0.4 ^ rotated ~-10 ~ run function asset:artifact/1230.thunder_stiletto/trigger/throw_knife.m {Damage:100}
