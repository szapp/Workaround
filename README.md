# Workaround Helper

[![Scripts](https://github.com/szapp/Workaround/actions/workflows/scripts.yml/badge.svg)](https://github.com/szapp/Workaround/actions/workflows/scripts.yml)
[![Validation](https://github.com/szapp/Workaround/actions/workflows/validation.yml/badge.svg)](https://github.com/szapp/Workaround/actions/workflows/validation.yml)
[![Build](https://github.com/szapp/Workaround/actions/workflows/build.yml/badge.svg)](https://github.com/szapp/Workaround/actions/workflows/build.yml)
[![GitHub release](https://img.shields.io/github/v/release/szapp/Workaround.svg)](https://github.com/szapp/Workaround/releases/latest)

Toolkit to serve workarounds for story bugs in Gothic, Gothic Sequel, Gothic 2, and Gothic 2 NotR.

This is a modular modification (a.k.a. patch or add-on) that can be installed and uninstalled at any time and is virtually compatible with any modification.
It supports <kbd>Gothic 1</kbd>, <kbd>Gothic Sequel</kbd>, <kbd>Gothic II (Classic)</kbd> and <kbd>Gothic II: NotR</kbd>.

###### Generated from [szapp/patch-template](https://github.com/szapp/patch-template).

## About

This patch provides various methods for workarounds to handle story bugs in game mods.
It is especially useful to introduce workarounds to common story bugs in mods (e.g. close a dead quest, reset a dialog that was spoken too early, change the value of a variable, etc.).
Until the mod team can provide a fix, this patch is a great temporary solution for critical bugs.

In itself, this patch does not perform any action.
Only in case of problems with a mod, the patch becomes useful.
Even then, the problem may only be fixed with clear instructions from the mod developers for a temporary solution.

The patch essentially allows to call any script function from the console.
Along-side a few helper functions.

## Features

- Close quests
- Mark dialogs as told/untold
- Display or modify the contents of variables/constants
- Call any script function

## Console commands

<table>
  <tbody>
    <tr>
      <td><code>DIA TOGGLE [C_INFO]</code></td>
      <td>Toggle told-status of C_Info dialog</td>
    </tr>
    <tr>
      <td><code>CALL [FUNCTION] [ARG1] [ARG2] [...]</code></td>
      <td>Call any Daedalus or external function</td>
    </tr>
    <tr>
      <td><code>CALL SETI "[VARNAME]" [NEWVALUE]</code></td>
      <td>Set integer variable to a new value</td>
    </tr>
  </tbody>
</table>

## Further information

- Info: https://forum.worldofplayers.de/forum/threads/1546912
- Instructions: https://forum.worldofplayers.de/forum/threads/?p=25621202

## Installation

1. Download the latest release of `Workaround.vdf` from the [releases page](https://github.com/szapp/Workaround/releases/latest).

2. Copy the file `Workaround.vdf` to `[Gothic]\Data\`. To uninstall, remove the file again.

The patch is also available on
- [World of Gothic](https://www.worldofgothic.de/dl/download_614.htm) | [Forum thread](https://forum.worldofplayers.de/forum/threads/1546912)
- [Spine Mod-Manager](https://clockwork-origins.com/spine/)
- [Steam Workshop Gothic 1](https://steamcommunity.com/sharedfiles/filedetails/?id=2787275653)
- [Steam Workshop Gothic 2](https://steamcommunity.com/sharedfiles/filedetails/?id=2787275237)

### Requirements

<table><thead><tr><th>Gothic</th><th>Gothic Sequel</th><th>Gothic II (Classic)</th><th>Gothic II: NotR</th></tr></thead>
<tbody><tr><td><a href="https://www.worldofgothic.de/dl/download_6.htm">Version 1.08k_mod</a></td><td>Version 1.12f</td><td><a href="https://www.worldofgothic.de/dl/download_278.htm">Report version 1.30.0.0</a></td><td><a href="https://www.worldofgothic.de/dl/download_278.htm">Report version 2.6.0.0</a></td></tr></tbody>
<tbody><tr><td colspan="4" align="center"><a href="https://github.com/szapp/Ninja">Ninja 2</a> (or higher)</td></tr></tbody></table>

<!--

If you are interested in writing your own patch, please do not copy this patch!
Instead refer to the PATCH TEMPLATE to build a foundation that is customized to your needs!
The patch template can found at https://github.com/szapp/patch-template.

-->
