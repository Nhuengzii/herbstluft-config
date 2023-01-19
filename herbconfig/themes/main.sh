#!/usr/bin/env bash

hc() {
    herbstclient "$@"
}
# theme
hc attr theme.tiling.reset 1
hc attr theme.floating.reset 1
hc set frame_border_active_color '#ffffffff'
hc set frame_border_normal_color '#101010cc'
hc set frame_bg_normal_color '#565656aa'
hc set frame_bg_active_color '#345F0Caa'
hc set frame_border_width 5
hc set show_frame_decorations 'all'
hc set frame_bg_transparent on
hc set frame_transparent_width 0
hc set frame_gap 0

hc attr theme.title_height 15
hc attr theme.title_when one_tab
hc attr theme.title_font 'Noto Sans:pixelsize=14'  # example using Xft
# hc attr theme.title_font '-*-fixed-medium-r-*-*-13-*-*-*-*-*-*-*'
hc attr theme.title_depth 3  # space below the title's baseline
hc attr theme.active.color '#707cff'
hc attr theme.title_color '#ffffff'
hc attr theme.normal.color '#323232dd'
hc attr theme.urgent.color '#7811A1dd'
hc attr theme.tab_color '#1F1F1Fdd'
hc attr theme.active.tab_color '#2B4F0Add'
hc attr theme.active.tab_outer_color '#6C8257dd'
hc attr theme.active.tab_title_color '#ababab'
hc attr theme.normal.title_color '#898989'
hc attr theme.inner_width 1
hc attr theme.inner_color black
hc attr theme.border_width 5
hc attr theme.floating.border_width 4
hc attr theme.floating.outer_width 1
hc attr theme.floating.outer_color black
hc attr theme.active.inner_color '#789161'
hc attr theme.urgent.inner_color '#9A65B0'
hc attr theme.normal.inner_color '#606060'
# copy inner color to outer_color
for state in active urgent normal ; do
    hc substitute C theme.${state}.inner_color \
        attr theme.${state}.outer_color C
done
hc attr theme.tiling.outer_width 1
hc attr theme.background_color '#141414'

hc set window_gap 5
hc set frame_padding 0
hc set smart_window_surroundings off
hc set smart_frame_surroundings on
hc set mouse_recenter_gap 0
