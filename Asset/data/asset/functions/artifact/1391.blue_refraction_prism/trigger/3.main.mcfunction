#> asset:artifact/1391.blue_refraction_prism/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# SingleDamageSession open
    function api:damage/single_damage_session/open

# 攻撃対象のうち近いN体に諸々を適用
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..64,sort=nearest,limit=3] at @s run function asset:artifact/1391.blue_refraction_prism/trigger/apply

# SingleDamageSession close
    function api:damage/single_damage_session/close

# 自作パーティクル x5
# 各entityで実行すると負荷がやばいのでテキトーに分散させる
    function asset:artifact/1391.blue_refraction_prism/trigger/vfx/
    function asset:artifact/1391.blue_refraction_prism/trigger/vfx/
    function asset:artifact/1391.blue_refraction_prism/trigger/vfx/
    function asset:artifact/1391.blue_refraction_prism/trigger/vfx/
    function asset:artifact/1391.blue_refraction_prism/trigger/vfx/

# リセット
    data remove storage asset:temp Temp
    tag @e[type=#lib:living_without_player,tag=Target,distance=..64] remove Target
