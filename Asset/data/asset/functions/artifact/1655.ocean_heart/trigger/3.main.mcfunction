#> asset:artifact/1655.ocean_heart/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1655.ocean_heart/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# 現在の体力割合を取得する
    function api:entity/player/get_health_per

# 体力が最大ならバフを付与し、それ以外は回復する
    execute if data storage api: Return{HealthPer:1.0d} run return run function asset:artifact/1655.ocean_heart/trigger/buff
    function asset:artifact/1655.ocean_heart/trigger/heal
