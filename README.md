# Easy-Mic-Mute-Hyprland
<b size="14">A small script for muting your microphone globally using Hyprland keybindings.</b>
<hr class="rounded">
This script was born to fix the problem that Discord has on Hyprland, the official client doesn't work properly and most people are using custom clients that don't support keybinding. 
The script also plays a sound using <a href="https://archlinux.org/packages/extra/x86_64/libpulse/">libpulse's</a> function paplay so you know when the microphone is muted/unmuted.

<h1>How to use:</h1>
<ol>
  <li>Check with paplay --version that libpulse is working</li>
  <li>Download script and place it anywhere you like</li>
  <li>Change the sounds to anything you like</li>
  <li>Call the script from Hyprland's keybindings.conf using</li>
    bind = ,HOME, exec, $HOME/easy-mic-mute-hyprland/easy-mic-mute.sh
  OR another key combination like
    bind = SUPER, M, exec, $HOME/easy-mic-mute-hyprland/easy-mic-mute.sh
</ol>
