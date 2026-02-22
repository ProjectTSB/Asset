#> asset:object/2200.twins_escape_animation/tick/remove_rubiel
#
# Objectのtick時の処理
#
# @within asset:object/2200.twins_escape_animation/tick/event_rubiel

# 消去
    # ボスドロ
        # data modify storage api: Argument.ID set value 1078
        # data modify storage api: Argument.Important set value true
        # function api:artifact/spawn/from_id
    # 消去
        function animated_java:twins_rubiel/remove/this
