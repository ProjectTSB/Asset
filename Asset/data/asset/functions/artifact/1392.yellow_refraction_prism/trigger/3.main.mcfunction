#> asset:artifact/1392.yellow_refraction_prism/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# MP減らす
    data modify storage api: Argument.Fluctuation set from storage asset:temp Temp.MPReduce
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation

# SingleDamageSession open
    function api:damage/single_damage_session/open

# 攻撃
    function asset:artifact/1392.yellow_refraction_prism/trigger/attack

# SingleDamageSession close
    function api:damage/single_damage_session/close

# 音
    execute at @e[type=#lib:living_without_player,tag=Target,distance=..64] run function asset:artifact/1392.yellow_refraction_prism/trigger/sound

# 自作パーティクル
    function asset:artifact/1392.yellow_refraction_prism/trigger/vfx/
    function asset:artifact/1392.yellow_refraction_prism/trigger/vfx/
    function asset:artifact/1392.yellow_refraction_prism/trigger/vfx/

# リセット
    data remove storage asset:temp Temp
    tag @e[type=#lib:living_without_player,tag=Target,distance=..64] remove Target
