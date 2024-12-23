#> asset:object/1009.arrow/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1009/detect_hit_entity

execute if data storage asset:context this.UserID run function asset:object/1009.arrow/detect_hit_entity/from_player
execute if data storage asset:context this.MobUUID run function asset:object/1009.arrow/detect_hit_entity/from_non-player
