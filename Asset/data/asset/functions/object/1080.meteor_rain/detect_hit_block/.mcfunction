#> asset:object/1080.meteor_rain/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1080/detect_hit_block

# TargetIDの有無で判定を変える
    execute if data storage asset:context this.TargetID run function asset:object/1080.meteor_rain/detect_hit_block/check/with_target.m with storage asset:context this
    execute unless data storage asset:context this.TargetID run function asset:object/1080.meteor_rain/detect_hit_block/check/without_target.m with storage asset:context this
