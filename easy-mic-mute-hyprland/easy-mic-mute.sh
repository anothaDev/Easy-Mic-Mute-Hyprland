#!/bin/bash

# Script to check if input source is muted using wpctl status

# Get wpctl status output
wpctl_output=$(wpctl status)

#Set Paths to sounds
microphone_muted="$HOME/Audio/muted.mp3"
microphone_activated="$HOME/Audio/activated.mp3"

# Extract the Sources section from Audio
# This captures lines between "Sources:" and the next section
sources_section=$(echo "$wpctl_output" | awk '/├─ Sources:/,/├─ Filters:|└─ Streams:|^Video/')

# Look for input sources with MUTED property
# Input sources show as "│  *   53. Name [vol: 1.00 MUTED]"
muted_inputs=$(echo "$sources_section" | grep "MUTED")

if [ -n "$muted_inputs" ]; then
    #echo "Muted input source(s) found:"
    wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
    paplay "$microphone_activated"
    #echo "$muted_inputs"
    exit 0
else
    #echo "No muted input sources found"
    wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
    paplay "$microphone_muted"
    exit 1
fi
