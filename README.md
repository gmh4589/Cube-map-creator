# Cube-map-creator
Tool for quickly creating cubemap textures
The program allows you to easily and quickly create textures CubeMap for Fallout 4. (In game archives, these files can be 
found under the path Textures\Shared)
These textures look like a rather exotic file: 6-page DDS. Most image viewers can easily open it, many of them can even flip 
through the pages in them (XnViewer and IrfanVeiw can exactly, others have not tried it). But to save and\or change all the 
programs can only first page.
The program Fallout 4 CubeMap Creator will be able to merge 6 regular DDS-files into one multi-page.
The program can work with all other games, wich uses multipage DDS cubmap textures format.


////USING\\\

How create cubemap textures see here﻿.
1. Copy 6 source files in the root of the program. All source files need full prepair to final work, resize, rotate and other.
In the game Fallout 4, all multi-page DDS have the following parameters:
DDS type: ARGB8888 (A8R8G8B8)
Resolution: 128x128
Color depth: 32 bit

In Skyrim LE\SE:
DDS type: DX1
Resolution: 32х32 - 1024х1024
Color depth: 32 bit
2. Rename the source files as follows: 1st page = 1.dds; 2nd page = 2.dds; 3rd page = 3.dds; 4th = 4.dds; 5th = 5.dds; 6th 
page = 6.dds
﻿
3. Run the program
4. If everything was done correctly, then the file out.dds appears in the folder, it can be renamed by the desired name, and 
used in the game.
ATTENTION!!! - All 6 files must have the same settings! Such as DDS type, resolution, color depth, presence\absence of alpha 
channel and others. The program takes all the parameters from the first file, and if the subsequent ones are different 
from the first, then the other pages will not be displayed correctly, or not displayed at all.



Files with other parameters in the game may not work!

The source code of the program is in the Data folder.
Page on NexusMods: https://www.nexusmods.com/fallout4/mods/34479

PS: The program was created in the process of PipBoy Skin Pack﻿ special for Follaut 4,  but this tool can create multi-page DDS-textures and for any other games that use this file format, of course, the parameters of 
the original DDS must match the parameters of the files of these games.
