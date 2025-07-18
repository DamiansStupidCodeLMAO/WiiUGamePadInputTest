# Wii U GamePad Input Test
A basic input tester for the Wii U GamePad, written for LÖVE Potion

Mainly written to try out the LÖVE Potion engine and get an understanding of it.

## How to Use:
There are 2 methods to use this software.

1. The WUHB File

There should be a precompiled WUHB in the Releases section of this repository. It has everything bundled in, so just toss it into `sdmc:/wiiu/apps/` and it should appear on your home menu!

2. The LÖVE Potion Method

Grab a copy of [LÖVE Potion](https://github.com/lovebrew/lovepotion) and place the WUHB file at `sdmc:/wiiu/apps/lovepotion/lovepotion.wuhb`. It is required that you use a 3.1.0 build of LÖVE Potion, so you need to grab the binary from GitHub Actions. This may change in the future.

Then, copy the game files from this repo to `sdmc:/wiiu/apps/lovepotion/game/`. Now, you can run the software by launching LÖVE Potion. As far as I'm aware, this is the only method for running this software on "Legacy" CFW, as LÖVE Potion builds elf files. Take this with a grain of salt, as it's untested.
