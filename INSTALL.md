# Installation Guide

> [!CAUTION]
> Terminal-first approach: This guide uses the command line extensively. Feel comfortable in the terminal before attempting this install.
> 
> Arch Linux Installation: This guide is meant for Arch Linux specifically, if installing on another operating system, use your operating system's designated commands. i.e.: `sudo pacman -S ...` -> `sudo apt install ...` or other command.

## Content
- Prerequisites & Setup
	1. Download Repository
	2. Install Programs
	3. Generate Cached Files
	4. Configure All Symbolic Links
	5. Make Scripts Executable
	6. Customization
		- Custom Template Usage
		- De-Bloat Config
		- Hyprland Ricing
- Post-Initialization Verification
- Debugging/Troubleshooting
	- Hyprland
	- Waybar
	- Pywal
	- Waypaper
## Prerequisites & Setup
### 1. Download Repository
Download the repository to have access to it's configuration files and scripts.

```sh
git clone https://github.com/CalciumKing/dotfiles.git ~/Downloads/dotfiles/
```
### 2. Install Programs
Install the packages this repository uses, and any other desired packages, through your package manager.

```sh
# including, but not limited to:
sudo pacman -S waybar playerctl python-pywal waypaper rofi kitty fastfetch cava btop
```
### 3. Generate Cached Files
Before configuring symbolic links, the cached files must first be generated.

```sh
wal -i "path/to/your/wallpaper.ext"
```

Confirm cached files have been generated in `~/.cache/wal`.
### 4. Configure All Symbolic Links
Symbolic links point to files on the source machine, not yours. Locate symbolic links throughout the repository, delete them, and create new symbolic links to the corresponding cached file, replacing `calciumking` with your username.

```sh
# move to desired directory
cd ~/.config/btop/themes/

# see where symbolic link points
ls -l pywal.theme
# output: pywal.theme -> /home/calciumking/.cache/wal/colors-btop.theme

# remove symbolic link
rm pywal.theme

# create new working symbolic link
ln -s /home/user/.cache/wal/colors-btop.theme ./pywal.theme
```

### 5. Make Scripts Executable
Custom scripts cannot run unless they are made executable.

```sh
chmod +x \
	~/.config/spicetify/scripts/* \
	~/.config/waybar/scripts/* \
	~/.config/waypaper/post-command.sh \
	...
```
### 6. Customization
Feel free to customize this repository after downloading to fit your desired system.
#### Custom Template Usage
Further themes can be created by creating a symbolic link to an already existing style file located in `~/.cache/wal/` or by creating a new style file. Custom style files can be created by adding files to `~/.config/wal/templates/`, see [User Template Files](https://github.com/dylanaraps/pywal/wiki/User-Template-Files) for more information.

```css
/* ~/.config/wal/templates/colors-hyprland.css */
$foreground = rgb({foreground.strip})
$color0 = rgb({color0.strip})
$color1 = rgb({color1.strip})
$color2 = rgb({color2.strip})
...
```

```sh
# generate cache file
wal -i "path/to/wallpaper.ext"
```

```sh
# ~/.config/hypr/modules/visuals.conf
source = ~/.cache/wal/colors-hyprland.css
...
```
#### De-Bloat Config
Some users prefer a less bloated system, or prefer different programs than what is used in this repository. After removing elements from this repository, I recommend searching your `~/.config/` folder for any use of removed programs to prevent unnecessary tasks or potential errors.

```sh
# remove package and all otherwise unused dependencies (if already installed)
sudo pacman -Rns vencord

cd ~/.config/  # move to .config directory

rm -r Vencord/  # remove config folder and contents

cd ~/.config/wal/templates/  # move to use case directory

rm colors-discord.css  # remove use case
```
#### Hyprland Ricing
Customize Hyprland further by reading [Hyprland Documentation](https://wiki.hypr.land/Configuring/Start/) - modify this rice and make your operating system truly unique and expressive. Hyprland files are located in `~/.config/hypr/`, this repository splits functionality into modules located in `~/.config/hypr/modules`.

```txt
~/.config/hypr/
├── hyprland.conf
└── modules/
    ├── animations.conf
    ├── autostart.conf
    ├── gestures.conf
    ├── inputs.conf
    ├── keybinds.conf
    ├── misc.conf
    ├── visuals.conf
    └── windows.conf
```
## Post-Installation Verification
After setup, test these components:  

- **Visual/UI**:
  - [ ] Waybar displays correctly (modules, colors, icons, etc.)
  - [ ] Window decorations (blur, transparency, borders, etc.)
- **Functionality**:
  - [ ] Rofi launchers work (app launcher, wifi menu, etc.)
  - [ ] Keybinds respond (try `SUPER+ENTER` for terminal)
  - [ ] Colors automatically change on waypaper use
  - [ ] All waybar icons have tool-tip or functionality
## Debugging/Troubleshooting

> [!NOTE]
> Debugging/Troubleshooting Variance: Means of figuring out why an error or undesired output is happening varies per applications/program. I recommend running an application from the terminal, reading output logs, or reading official documentation.

### Examples Debugging/Troubleshooting

#### Hyprland
- [Hyprland Website](https://hypr.land/)
- [Hyprland Wiki](https://wiki.hypr.land/)
- [Hyprland Arch Wiki](https://wiki.archlinux.org/title/Hyprland)
#### Waybar
- [Waybar GitHub Wiki](https://github.com/Alexays/Waybar/wiki)
- [Waybar Arch Wiki](https://wiki.archlinux.org/title/Waybar)
- [Hyprland Ecosystem Waybar Guide](https://waybar.org/category/guide/)

```sh
waybar
# output:
# [info] Using configuration file /home/calciumking/.config/waybar/config.jsonc
# [info] Using CSS file /home/calciumking/.config/waybar/style.css
# [info] Bar configured (width: 66, height: 1017) for output: eDP-1
# [info] Bar configured (width: 1788, height: 63) for output: eDP-1
```
#### Pywal
- [Pywal GitHub Wiki](https://github.com/dylanaraps/pywal/wiki)

```sh
wal -i "dracula.png"
# output:
# [I] image: Using image dracula.png.
# [I] colors: Generating a colorscheme.
# [I] colors: Using wal backend.

# [W] wal: Imagemagick couldn't generate a palette.

# [E] wal: Imagemagick couldn't generate a suitable palette.
```
#### Waypaper
- [Waypaper Github Repo](https://github.com/anufrievroman/waypaper)
- [Waypaper Documentation](https://anufrievroman.gitbook.io/waypaper)

```sh
waypaper
# output:
# Selected file: /home/calciumking/Pictures/wallpapers/arch/bluescreen.png
# Sent swww command to set bluescreen.png on All display

# Executed "~/.config/waypaper/post-command.sh /home/calciumking/Pictures/wallpapers/arch/bluescreen.png" post-command

# [I] image: Using image bluescreen.png.
# [I] colors: Generating a colorscheme.
# [I] colors: Using wal backend.

# [E] wal: Imagemagick couldn't generate a suitable palette.
```
