#> asset:object/2200.twins_escape_animation/tick/remove_sapphiel
#
# Objectのtick時の処理
#
# @within asset:object/2200.twins_escape_animation/tick/event_sapphiel

# 消去
    # ボスドロ
        # data modify storage api: Argument.ID set value 1079
        # data modify storage api: Argument.Important set value true
        # function api:artifact/spawn/from_id
    # 消去
        function animated_java:twins_sapphiel/remove/this
